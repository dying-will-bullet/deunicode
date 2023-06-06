const std = @import("std");

const deunicode = @import("deunicode").deunicode;
const deunicodeAlloc = @import("deunicode").deunicodeAlloc;

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    // Using allocator, caller should free the memory
    const res = try deunicodeAlloc(allocator, "世界和平");
    defer allocator.free(res);
    std.debug.print("{s}\n", .{res});

    // Using the buffer
    var buffer: [1024]u8 = undefined;
    const res2 = try deunicode(&buffer, "おはよう");
    std.debug.print("{s}\n", .{res2});
}
