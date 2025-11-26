const std = @import("std");
const unicode = @import("std").unicode;
const Allocator = std.mem.Allocator;
// Testing
const testing = std.testing;

// --------------------------------------------------------------------------------
//                                  Private API
// --------------------------------------------------------------------------------

const Ptr = struct {
    /// if len <= 2, it's the string itself,
    /// otherwise it's an u16 offset into MAPPING
    chr: [2]u8 align(1),
    len: u8 align(1),
};

const RAW_POINTERS = @embedFile("./pointers.bin");
const MAPPING = @embedFile("./mapping.txt");
var POINTERS: *[]const Ptr = @ptrCast(@alignCast(@constCast(&RAW_POINTERS)));

// Convert Unicode points to their ASCII representation. Write to the dest, and return the slice.
// If not found, return null. Additionally, the function can also write an empty string.
pub fn getReplacement(cp: u21) ?[]const u8 {
    const i = @as(usize, cp);
    if (i >= POINTERS.*.len) {
        return null;
    }

    const p = POINTERS.*[i];

    // if length is 1 or 2, then the "pointer" data is used to store the char
    const chars = if (p.len <= 2) blk: {
        // NOTE: not p.chr
        // break :blk POINTERS.*[i].chr[0..@as(usize, p.len)];
        break :blk POINTERS.*[i].chr[0..@as(usize, p.len)];
    } else blk: {
        const map_pos = @as(usize, (@as(u16, p.chr[0]) | (@as(u16, p.chr[1]) << 8)));
        // unknown characters are intentionally mapped to out of range length
        const start = map_pos;
        const end = @as(usize, map_pos + p.len);
        if (start >= MAPPING.len or end >= MAPPING.len) {
            return null;
        }
        break :blk MAPPING.*[start..end];
    };

    return chars;
}

// --------------------------------------------------------------------------------
//                                  Public API
// --------------------------------------------------------------------------------

/// This function takes any Unicode string and returns an ASCII transliteration
/// of that string.
///
/// Guarantees and Warnings
/// -----------------------
/// Here are some guarantees you have when calling `deunicode()`:
///   * The `String` returned will be valid ASCII; the decimal representation of
///     every `char` in the string will be between 0 and 127, inclusive.
///   * Every ASCII character (0x0000 - 0x007F) is mapped to itself.
///   * All Unicode characters will translate to a string containing newlines
///     (`"\n"`) or ASCII characters in the range 0x0020 - 0x007E. So for example,
///     no Unicode character will translate to `\u{01}`. The exception is if the
///     ASCII character itself is passed in, in which case it will be mapped to
///     itself. (So `'\u{01}'` will be mapped to `"\u{01}"`.)
///
/// There are, however, some things you should keep in mind:
///   * As stated, some transliterations do produce `\n` characters.
///   * Some Unicode characters transliterate to an empty string on purpose.
///   * Some Unicode characters are unknown and transliterate to `"[?]"` (see `deunicodeCustom`)
///   * Many Unicode characters transliterate to multi-character strings. For
///     example, "世" is transliterated as "Shi".
///   * Han characters are mapped to Mandarin, and will be mostly illegible to Japanese readers.
pub fn deunicodeAlloc(allocator: Allocator, s: []const u8) ![]const u8 {
    return try deunicodeCustomAlloc(allocator, s, "[?]");
}

pub fn deunicode(out: []u8, s: []const u8) ![]const u8 {
    return try deunicodeCustom(out, s, "[?]");
}

/// Same as `deunicode`, but unknown characters can be replaced with a custom string.
///
/// You can use "\u{FFFD}" to use the usual Unicode Replacement Character.
pub fn deunicodeCustomAlloc(allocator: Allocator, s: []const u8, custom_placeholder: []const u8) ![]const u8 {
    // Fast path to skip over ASCII chars at the beginning of the string
    var ascii_len: usize = 0;
    for (s) |c| {
        if (c < 0x7F) {
            ascii_len += 1;
            continue;
        }
        break;
    }

    if (ascii_len >= s.len) {
        return try allocator.dupe(u8, s);
    }

    // reserve a bit more space to avoid reallocations on longer transliterations
    // but instead of `+ 16` uses `| 15` to stay in the smallest allocation bucket for short strings
    var out = try std.array_list.Managed(u8).initCapacity(allocator, s.len | 15);
    defer out.deinit();

    const ascii = s[0..ascii_len];
    // rest's length must >= 1
    const rest = s[ascii_len..];

    _ = out.appendSliceAssumeCapacity(ascii);

    var iter = (try unicode.Utf8View.init(rest)).iterator();
    var codepoint = iter.nextCodepoint();

    // cache next
    var has_next_cache = false;
    var next_cache: ?[]const u8 = undefined;

    while (codepoint != null) {
        const res = if (has_next_cache) blk: {
            break :blk next_cache;
        } else blk: {
            break :blk getReplacement(codepoint.?);
        };

        // move codepoint to next
        codepoint = iter.nextCodepoint();
        has_next_cache = false;

        if (res == null) {
            try out.appendSlice(custom_placeholder);
            continue;
        }

        const chars = res.?;
        try out.appendSlice(chars);

        // true if end
        const ends_with_space = chars.len > 1 and chars[chars.len - 1] == ' ';
        if (!ends_with_space) {
            continue;
        }

        // space next (assume placeholder is not space)
        var space_or_end_next = true;
        // this is the next codepoint
        if (codepoint != null) {
            const ch = getReplacement(codepoint.?);
            has_next_cache = true;
            next_cache = ch;
            if (ch == null) {
                space_or_end_next = false;
            } else {
                space_or_end_next = ch.?[0] == ' ';
            }
        }

        // pop space
        if (space_or_end_next) {
            _ = out.pop();
        }
    }

    return out.toOwnedSlice();
}

pub fn deunicodeCustom(out: []u8, s: []const u8, custom_placeholder: []const u8) ![]const u8 {
    var cursor: usize = 0;

    // Fast path to skip over ASCII chars at the beginning of the string
    var ascii_len: usize = 0;
    for (s) |c| {
        if (c < 0x7F) {
            ascii_len += 1;
            continue;
        }
        break;
    }

    @memcpy(out[cursor .. cursor + ascii_len], s[0..ascii_len]);
    cursor += ascii_len;

    if (ascii_len >= s.len) {
        return out[0..s.len];
    }

    // rest's length must >= 1
    const rest = s[ascii_len..];

    var iter = (try unicode.Utf8View.init(rest)).iterator();
    var codepoint = iter.nextCodepoint();

    // cache next
    var has_next_cache = false;
    var next_cache: ?[]const u8 = undefined;

    while (codepoint != null) {
        const res = if (has_next_cache) blk: {
            break :blk next_cache;
        } else blk: {
            break :blk getReplacement(codepoint.?);
        };

        // move codepoint to next
        codepoint = iter.nextCodepoint();
        has_next_cache = false;

        if (res == null) {
            @memcpy(out[cursor .. cursor + custom_placeholder.len], custom_placeholder);
            cursor += custom_placeholder.len;
            continue;
        }

        const chars = res.?;

        @memcpy(out[cursor .. cursor + chars.len], chars);
        cursor += chars.len;

        // true if end
        const ends_with_space = chars.len > 1 and chars[chars.len - 1] == ' ';
        if (!ends_with_space) {
            continue;
        }

        // space next (assume placeholder is not space)
        var space_or_end_next = true;
        // this is the next codepoint
        if (codepoint != null) {
            const ch = getReplacement(codepoint.?);
            has_next_cache = true;
            next_cache = ch;
            if (ch == null) {
                space_or_end_next = false;
            } else {
                space_or_end_next = ch.?[0] == ' ';
            }
        }

        // pop space
        if (space_or_end_next) {
            cursor -= 1;
        }
    }

    return out[0..cursor];
}

// --------------------------------------------------------------------------------
//                                   Testing
// --------------------------------------------------------------------------------

fn checkConversionAlloc(str: []const u8, expect: []const u8) !bool {
    const allocator = testing.allocator;

    const res = try deunicodeAlloc(allocator, str);
    defer allocator.free(res);

    // std.debug.print("{any}\r\n", .{res});
    // std.debug.print("{any}\r\n", .{expect});

    return std.mem.eql(u8, res, expect);
}

fn checkConversionBuf(str: []const u8, expect: []const u8) !bool {
    const allocator = testing.allocator;
    _ = allocator;

    var buf: [1024]u8 = undefined;

    const res = try deunicode(&buf, str);

    return std.mem.eql(u8, res, expect);
}

test "test conversion alloc" {
    try testing.expect(try checkConversionAlloc("Æneid", "AEneid"));
    try testing.expect(try checkConversionAlloc("étude", "etude"));
    try testing.expect(try checkConversionAlloc("祈愿", "Qi Yuan"));
    try testing.expect(try checkConversionAlloc("祈愿peace", "Qi Yuan peace"));
    try testing.expect(try checkConversionAlloc("祈愿 peace", "Qi Yuan peace"));
    try testing.expect(try checkConversionAlloc("祈 愿 — peace", "Qi Yuan -- peace"));
    try testing.expect(try checkConversionAlloc("ᔕᓇᓇ", "shanana"));
    try testing.expect(try checkConversionAlloc("ᏔᎵᏆ", "taliqua"));
    try testing.expect(try checkConversionAlloc("ܦܛܽܐܺ", "ptu'i"));
    try testing.expect(try checkConversionAlloc("अभिजीत", "abhijiit"));
    try testing.expect(try checkConversionAlloc("অভিজীত", "abhijiit"));
    try testing.expect(try checkConversionAlloc("അഭിജീത", "abhijiit"));
    try testing.expect(try checkConversionAlloc("മലയാലമ്", "mlyaalm"));
    try testing.expect(try checkConversionAlloc("げんまい茶", "genmaiCha"));
}

test "test space alloc" {
    try testing.expect(try checkConversionAlloc(" spaces ", " spaces "));
    try testing.expect(try checkConversionAlloc(" spaces ", " spaces "));
    try testing.expect(try checkConversionAlloc("  two  spaces  ", "  two  spaces  "));
}

test "test emoji alloc" {
    try testing.expect(try checkConversionAlloc("🦄☣", "unicorn biohazard"));
    try testing.expect(try checkConversionAlloc("🦄 ☣", "unicorn biohazard"));
}

test "test longest alloc" {
    try testing.expect(try checkConversionAlloc("🫰", "hand with index finger and thumb crossed"));
}

test "test conversion buf" {
    try testing.expect(try checkConversionBuf("Æneid", "AEneid"));
    try testing.expect(try checkConversionBuf("étude", "etude"));
    try testing.expect(try checkConversionBuf("祈愿", "Qi Yuan"));
    try testing.expect(try checkConversionBuf("祈愿peace", "Qi Yuan peace"));
    try testing.expect(try checkConversionBuf("祈愿 peace", "Qi Yuan peace"));
    try testing.expect(try checkConversionBuf("祈 愿 — peace", "Qi Yuan -- peace"));
    try testing.expect(try checkConversionBuf("ᔕᓇᓇ", "shanana"));
    try testing.expect(try checkConversionBuf("ᏔᎵᏆ", "taliqua"));
    try testing.expect(try checkConversionBuf("ܦܛܽܐܺ", "ptu'i"));
    try testing.expect(try checkConversionBuf("अभिजीत", "abhijiit"));
    try testing.expect(try checkConversionBuf("অভিজীত", "abhijiit"));
    try testing.expect(try checkConversionBuf("അഭിജീത", "abhijiit"));
    try testing.expect(try checkConversionBuf("മലയാലമ്", "mlyaalm"));
    try testing.expect(try checkConversionBuf("げんまい茶", "genmaiCha"));
}

test "test space buf" {
    try testing.expect(try checkConversionBuf(" spaces ", " spaces "));
    try testing.expect(try checkConversionBuf(" spaces ", " spaces "));
    try testing.expect(try checkConversionBuf("  two  spaces  ", "  two  spaces  "));
}

test "test emoji buf" {
    try testing.expect(try checkConversionBuf("🦄☣", "unicorn biohazard"));
    try testing.expect(try checkConversionBuf("🦄 ☣", "unicorn biohazard"));
}

test "test longest buf" {
    try testing.expect(try checkConversionBuf("🫰", "hand with index finger and thumb crossed"));
}
