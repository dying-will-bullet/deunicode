<h1 align="center"> deunicode </h1>

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
    const len = try deunicode(&buffer, "おはよう");
    std.debug.print("{s}\n", .{buffer[0..len]});  // ohayou
}
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
