const std = @import("std");
const deunicode = @import("deunicode").deunicode;

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    const res = try deunicode(allocator, "世界和平");
    defer allocator.free(res);

    std.debug.print("{s}\n", .{res});
}
