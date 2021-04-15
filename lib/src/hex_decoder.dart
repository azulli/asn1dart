import 'dart:typed_data';

/// Regex test hex string
const reHex = r'^\s*(?:[0-9A-Fa-f][0-9A-Fa-f]\s*)+$';

/// Decoder for hex strings
///
/// Original code by Lapo Luchini <lapo@lapo.it> (c) 2008-2020
class HexDecoder {
  /// Decode switcher for input type.
  ///
  /// Accepts either a string or a Uint8List [source]
  static Uint8List decode(String source) {
    final nibbles = '0123456789ABCDEF';
    final spacesRx = RegExp('[\f\n\r\t\u00A0\u0028\u2029]');
    // Removes all "space" charactes
    source = source.replaceAll(spacesRx, '').toUpperCase();
    // Checks if the resulting string is even
    if (source.length % 2 != 0) {
      throw StateError('Hex string invalid: missing character');
    }
    final result = Uint8List(source.length ~/ 2);
    var hiNibble;
    var len = 0;
    for (var i = 0; i < source.length; i++) {
      final nibble = nibbles.indexOf(source[i]);
      if (nibble == -1) {
        throw StateError('Illegal character at position $i');
      }
      if (hiNibble == null) {
        hiNibble = nibble;
      } else {
        result[len++] = (hiNibble << 4) + nibble;
        hiNibble = null;
      }
    }
    return result;
  }
}
