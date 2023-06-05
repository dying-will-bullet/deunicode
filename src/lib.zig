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

const POINTERS = @embedFile("./pointers.bin");
const MAPPING = @embedFile("./mapping.txt");

// Convert Unicode points to their ASCII representation. Write to the dest, and return the slice.
// If not found, return null. Additionally, the function can also write an empty string.
fn getReplacement(cp: u21, ptrs: *[]const Ptr, dest: []u8) ?[]const u8 {
    const pointers = ptrs.*;

    const i = @as(usize, cp);
    if (i >= pointers.len) {
        return null;
    }

    const p = pointers[i];

    // if length is 1 or 2, then the "pointer" data is used to store the char
    const chars = if (p.len <= 2) blk: {
        break :blk p.chr[0..@as(usize, p.len)];
    } else blk: {
        const map_pos = @as(usize, (@as(u16, p.chr[0]) | (@as(u16, p.chr[1]) << 8)));
        // unknown characters are intentionally mapped to out of range length
        const start = map_pos;
        const end = @as(usize, map_pos + p.len);
        if (start >= MAPPING.len or end >= MAPPING.len) {
            return null;
        }
        // break :blk MAPPING.*[start..end];
        break :blk MAPPING[start..end];
    };

    // return chars;
    std.mem.copy(u8, dest[0..chars.len], chars);

    return dest[0..chars.len];
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
pub fn deunicode(allocator: Allocator, s: []const u8) ![]const u8 {
    return try deunicodeCustom(allocator, s, "[?]");
}

/// Same as `deunicode`, but unknown characters can be replaced with a custom string.
///
/// You can use "\u{FFFD}" to use the usual Unicode Replacement Character.
pub fn deunicodeCustom(allocator: Allocator, s: []const u8, custom_placeholder: []const u8) ![]const u8 {
    const ptrs = @ptrCast(*[]const Ptr, @alignCast(@alignOf(*[]const Ptr), @constCast(&POINTERS)));

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
    var out = try std.ArrayList(u8).initCapacity(allocator, s.len | 15);
    defer out.deinit();

    const ascii = s[0..ascii_len];
    // rest's length must >= 1
    const rest = s[ascii_len..];

    _ = out.appendSliceAssumeCapacity(ascii);

    var iter = (try unicode.Utf8View.init(rest)).iterator();
    var codepoint = iter.nextCodepoint();
    // TODO:
    var buf: [41]u8 = undefined;

    // cache next
    var has_next_cache = false;
    var next_cache: ?[]const u8 = undefined;

    while (codepoint != null) {
        const res = if (has_next_cache) blk: {
            break :blk next_cache;
        } else blk: {
            break :blk getReplacement(codepoint.?, ptrs, &buf);
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
            const ch = getReplacement(codepoint.?, ptrs, &buf);
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

// --------------------------------------------------------------------------------
//                                   Testing
// --------------------------------------------------------------------------------

fn checkConversion(str: []const u8, expect: []const u8) !bool {
    const allocator = testing.allocator;

    const res = try deunicode(allocator, str);
    defer allocator.free(res);

    // std.debug.print("{any}\r\n", .{res});
    // std.debug.print("{any}\r\n", .{expect});

    return std.mem.eql(u8, res, expect);
}

test "test conversion" {
    try testing.expect(try checkConversion("Æneid", "AEneid"));
    try testing.expect(try checkConversion("étude", "etude"));
    try testing.expect(try checkConversion("祈愿", "Qi Yuan"));
    try testing.expect(try checkConversion("祈愿peace", "Qi Yuan peace"));
    try testing.expect(try checkConversion("祈愿 peace", "Qi Yuan peace"));
    try testing.expect(try checkConversion("祈 愿 — peace", "Qi Yuan -- peace"));
    try testing.expect(try checkConversion("ᔕᓇᓇ", "shanana"));
    try testing.expect(try checkConversion("ᏔᎵᏆ", "taliqua"));
    try testing.expect(try checkConversion("ܦܛܽܐܺ", "ptu'i"));
    try testing.expect(try checkConversion("अभिजीत", "abhijiit"));
    try testing.expect(try checkConversion("অভিজীত", "abhijiit"));
    try testing.expect(try checkConversion("അഭിജീത", "abhijiit"));
    try testing.expect(try checkConversion("മലയാലമ്", "mlyaalm"));
    try testing.expect(try checkConversion("げんまい茶", "genmaiCha"));
}

test "test space" {
    try testing.expect(try checkConversion(" spaces ", " spaces "));
    try testing.expect(try checkConversion(" spaces ", " spaces "));
    try testing.expect(try checkConversion("  two  spaces  ", "  two  spaces  "));
}

test "test emoji" {
    try testing.expect(try checkConversion("🦄☣", "unicorn biohazard"));
    try testing.expect(try checkConversion("🦄 ☣", "unicorn biohazard"));
}

test "test longest" {
    try testing.expect(try checkConversion("🫰", "hand with index finger and thumb crossed"));
}
