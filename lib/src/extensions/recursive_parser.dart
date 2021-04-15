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
