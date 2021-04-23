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

import '../asn1object.dart';
import '../parsed_structs.dart';
import 'datautils.dart';

extension RecursiveParser on ASN1Object {
  ParsedString recurse(StringParserType executor, int maxLength) {
    var differentTags = false;
    childs?.forEach((element) {
      if (element.tag?.tagClass != tag?.tagClass ||
          element.tag?.tagNumber != tag?.tagNumber) {
        differentTags = true;
      }
    });
    if (childs == null || differentTags) {
      return executor == StringParserType.bitString
          ? data!.parseBitString(header, header + (size?.abs() ?? 0), maxLength)
          : data!
              .parseOctetString(header, header + (size?.abs() ?? 0), maxLength);
    }
    var len = 0, str = '';
    childs!.forEach((element) {
      var tmp = element.recurse(executor, maxLength - str.length);
      len += tmp.size;
      str += tmp.str;
    });
    return ParsedString(len, str);
  }
}
