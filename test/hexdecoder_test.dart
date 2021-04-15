import 'package:asn1dart/src/hex_decoder.dart';
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
