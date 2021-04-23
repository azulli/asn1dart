// ASN.1 Dart decoder Copyright (c) 2021-2022 A. Zulli
//
// Permission to use, copy, modify, and/or distribute this software for any
// purpose with or without fee is hereby granted, provided that the above
// copyright notice and this permission notice appear in all copies.
//
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
// WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
// ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
// WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
// ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
// OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

import 'package:asn1dart/hex_decoder.dart';
import 'package:test/test.dart';

void main() {
  test('Hex decoding', () {
    final sample = '68656C6C6F2068657820776F726C64';
    final bytes = [
      104,
      101,
      108,
      108,
      111,
      32,
      104,
      101,
      120,
      32,
      119,
      111,
      114,
      108,
      100
    ];
    expect(HexDecoder.decode(sample), bytes);
  });

  test('Hex decoding with unhandled', () {
    final sample = '68656C6\nC6F2068\u{2029}65782077\t6F726C64';
    final bytes = [
      104,
      101,
      108,
      108,
      111,
      32,
      104,
      101,
      120,
      32,
      119,
      111,
      114,
      108,
      100
    ];
    expect(HexDecoder.decode(sample), bytes);
  });
}
