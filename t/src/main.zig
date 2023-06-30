const std = @import("std");
const unicode = @import("std").unicode;
const Allocator = std.mem.Allocator;
// Testing
const testing = std.testing;

// --------------------------------------------------------------------------------
//                                  Private API
// --------------------------------------------------------------------------------

const T = struct {
    chr: [2]u8 align(1),
    len: u8 align(1),
};

const RAW_BYTES = @embedFile("./pointers.bin");
var DATA = @ptrCast(*[]const T, @alignCast(@alignOf(*[]const T), @constCast(&RAW_BYTES)));

test "aa" {
    const item = DATA.*[20013];
    std.debug.print("{any}", .{item.len});
}
