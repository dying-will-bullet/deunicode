<h1 align="center"> deunicode 🪚 </h1>

[![CI](https://github.com/dying-will-bullet/deunicode/actions/workflows/ci.yaml/badge.svg)](https://github.com/dying-will-bullet/deunicode/actions/workflows/ci.yaml)
![](https://img.shields.io/badge/language-zig-%23ec915c)

The `deunicode` library(aka. `unidecode`) transliterates Unicode strings such as "Æneid" into pure
ASCII ones such as "AEneid."

This is an implementation of Rust's [deunicode](https://github.com/kornelski/deunicode) crate in Zig, using its own Unicode mapping data. Therefore, it is distributed under the same license.

## Examples

```zig
const std = @import("std");
const deunicode = @import("deunicode").deunicode;
const deunicodeAlloc = @import("deunicode").deunicodeAlloc;

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    // Using allocator, caller should free the memory
    const res = try deunicodeAlloc(allocator, "世界和平");
    defer allocator.free(res);

    std.debug.print("{s}\n", .{res});  // Shi Jie He Ping

    // Using the buffer
    var buffer: [1024]u8 = undefined;
    const res2 = try deunicode(&buffer, "おはよう");
    std.debug.print("{s}\n", .{res2});  // ohayou
}
```

## API Doc

- `fn deunicodeAlloc(allocator: Allocator, s: []const u8) ![]const u8`:  
  Return new string, caller should free memory.
- `fn deunicode(out: []u8, s: []const u8) ![]const u8`:  
  Use buffer instead of allocator. Retrun a string slice.

When an ASCII replacement cannot be found, the default placeholder `[?]` is used.
If you want to customize the placeholder, you can use the following API.

- `fn deunicodeCustomAlloc(allocator: Allocator, s: []const u8, custom_placeholder: []const u8) ![]const u8`
- `fn deunicodeCustom(out: []u8, s: []const u8, custom_placeholder: []const u8) ![]const u8`

## Installation

Add `deunicode` as dependency in `build.zig.zon`:

```
.{
    .name = "my-project",
    .version = "0.1.0",
    .dependencies = .{
       .deunicode = .{
           .url = "https://github.com/dying-will-bullet/deunicode/archive/refs/tags/v0.1.1.tar.gz",
           .hash = "1220fef06e2fab740b409eaec28fee459526c86f297e6c43fdaee471084cc569f397",
       },
    },
}
```

Expose `deunicode` as a module in `build.zig`:

```diff
diff --git a/build.zig b/build.zig
index 60fb4c2..0255ef3 100644
--- a/build.zig
+++ b/build.zig
@@ -15,6 +15,9 @@ pub fn build(b: *std.Build) void {
     // set a preferred release mode, allowing the user to decide how to optimize.
     const optimize = b.standardOptimizeOption(.{});

+    const opts = .{ .target = target, .optimize = optimize };
+    const deunicode_module = b.dependency("deunicode", opts).module("deunicode");
+
     const exe = b.addExecutable(.{
         .name = "m",
         // In this case the main source file is merely a path, however, in more
@@ -23,6 +26,7 @@ pub fn build(b: *std.Build) void {
         .target = target,
         .optimize = optimize,
     });
+    exe.addModule("deunicode", deunicode_module);

     // This declares intent for the executable to be installed into the
     // standard location when the user invokes the "install" step (the default

```

## Guarantees and Warnings

Here are some guarantees you have when calling `deunicode()`:

- The `String` returned will be valid ASCII; the decimal representation of
  every `char` in the string will be between 0 and 127, inclusive.
- Every ASCII character (0x00 - 0x7F) is mapped to itself.
- All Unicode characters will translate to printable ASCII characters
  (`\n` or characters in the range 0x20 - 0x7E).

There are, however, some things you should keep in mind:

- Some transliterations do produce `\n` characters.
- Some Unicode characters transliterate to an empty string, either on purpose
  or because `deunicode` does not know about the character.
- Some Unicode characters are unknown and transliterate to `"[?]"`
  (or a custom placeholder, or `None` if you use a chars iterator).
- Many Unicode characters transliterate to multi-character strings. For
  example, "世" is transliterated as "Shi".
- Transliteration is context-free and not sophisticated enough to produce proper Chinese or Japanese.
  Han characters used in multiple languages are mapped to a single Mandarin pronounciation,
  and will be mostly illegible to Japanese readers. Transliteration can't
  handle cases where a single character has multiple possible pronounciations.

## Unicode data

- [`Text::Unidecode`](http://search.cpan.org/~sburke/Text-Unidecode-1.30/lib/Text/Unidecode.pm) by Sean M. Burke
- [Unicodey](https://unicodey.com) by Cal Henderson
- [gh emoji](https://lib.rs/gh-emoji)
- [any_ascii](https://anyascii.com/)

For a detailed explanation on the rationale behind the original
dataset, refer to [this article](http://interglacial.com/~sburke/tpj/as_html/tpj22.html) written
by Burke in 2001.

## LICENSE

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

- Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.
- Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.
- The names of this software's contributors may not be used to endorse or
  promote products derived from this software without specific prior written
  permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
