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

import 'package:asn1dart/asn1dart.dart';
import 'package:asn1dart/asn1_oids.dart';
import 'package:asn1dart/hex_decoder.dart';
import 'package:asn1dart/src/impl/string_objects.dart';
import 'package:test/test.dart';

void main() {
  late ASN1Decoder decoder;

  setUp(() {
    decoder = ASN1Decoder();
  });

  group('Bit string', () {
    test('Bit string: DER encoding', () {
      final test = '0304066E5DC0';
      final expected = '011011100101110111';
      final expectedBit = 18;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.value.length, expectedBit);
    });

    test('Bit string: padded with "100000"', () {
      final test = '0304066E5DE0';
      final expected = '011011100101110111';
      final expectedBit = 18;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.value.length, expectedBit);
    });

    test('Bit string: long form of length octets', () {
      final test = '038104066E5DC0';
      final expected = '011011100101110111';
      final expectedBit = 18;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.value.length, expectedBit);
    });

    test('Bit string: invalid unusedBits', () {
      final test = '0304086E5DC0';
      // final expected = 'Exception:\nInvalid BitString with unusedBits=8';
      expect(() => decoder.convert(HexDecoder.decode(test)), throwsException);
    });

    test('Bit string (constructed encoding): "0110111001011101" + "11"', () {
      final test = '23090303006E5D030206C0';
      final expected = '011011100101110111';
      final expectedBit = 18;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.value.length, expectedBit);
    });
  });

  group('Octet string', () {
    test('Octet string: DER encoding', () {
      final test = '04080123456789ABCDEF';
      final expected = '0123456789ABCDEF';
      final expectedBytes = 8;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.size, expectedBytes);
    });

    test('Octet string: long form of length octets', () {
      final test = '0481080123456789ABCDEF';
      final expected = '0123456789ABCDEF';
      final expectedBytes = 8;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
    });

    test('Octet string (constructed encoding): 01…67 + 89…ef', () {
      final test = '240C040401234567040489ABCDEF';
      final expected = '0123456789ABCDEF';
      final expectedBytes = 8;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
    });
  });

  group('PKCS', () {
    test('PKCS#10 request', () {
      final test =
          '30820319308202820201003023310F300D0603550403130654657374434E3110300E060355040A1307546573744F726730819F300D06092A864886F70D010101050003818D00308189028181008FE2412A08E851A88CB3E853E7D54950B3278A2BCBEAB54273EA0257CC6533EE882061A11756C12418E3A808D3BED931F3370B94B8CC43080B7024F79CB18D5DD66D82D0540984F89F970175059C89D4D5C91EC913D72A6B309119D6D442E0C49D7C9271E1B22F5C8DEEF0F1171ED25F315BB19CBC2055BF3A37424575DC90650203010001A08201B4301A060A2B0601040182370D0203310C160A362E302E353336312E323042060A2B0601040182370D0201313430321E260043006500720074006900660069006300610074006500540065006D0070006C0061007400651E080055007300650072305706092B0601040182371514314A30480201090C237669636833642E6A646F6D6373632E6E74746573742E6D6963726F736F66742E636F6D0C154A444F4D4353435C61646D696E6973747261746F720C07636572747265713074060A2B0601040182370D0202316630640201011E5C004D006900630072006F0073006F0066007400200045006E00680061006E006300650064002000430072007900700074006F0067007200610070006800690063002000500072006F00760069006400650072002000760031002E003003010030818206092A864886F70D01090E31753073301706092B0601040182371402040A1E08005500730065007230290603551D2504223020060A2B0601040182370A030406082B0601050507030406082B06010505070302300E0603551D0F0101FF0404030205A0301D0603551D0E041604143C0F73DAF8EF41D83AEABE922A5D2C966A7B9454300D06092A864886F70D01010505000381810047EB995ADF9E700DFBA73132C15F5C24C2E0BFC624AF15660EB86A2EAB2BC4971FE3CBDC63A525ECC7B428616636A1311BBFDDD0FCBF1794901DE55EC7115EC9559FEBA33E14C799A6CBBAA1460F39D444C4C84B760E205D6DA9349ED4D58742EB2426511490B40F065E5288327A9520A0FDF7E57D60DD72689BF57B058F6D1E';
      final expected = '(3 elem)';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Collection).childs!.length, 3);
      // expect((result as ASN1DataString).value, expected);
    });
  });

  group('Big Integer', () {
    test('Big integer (126 bit)', () {
      final test = '02102FA176B36EE9F049F444B40099661945';
      final expected = '63312083136615639753586560173617846597';
      final expectedBits = 126;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
      expect(result.bits, expectedBits);
    });

    test('Big integer (1024 bit)', () {
      final test =
          '028181008953097086EE6147C5F4D5FFAF1B498A3D11EC5518E964DC52126B2614F743883F64CA51377ABB530DFD20464A48BD67CD27E7B29AEC685C5D10825E605C056E4AB8EEA460FA27E55AA62C498B02D7247A249838A12ECDF37C6011CF4F0EDEA9CEE687C1CB4A51C6AE62B2EFDB000723A01C99D6C23F834880BA8B42D5414E6F';
      final expected =
          '96432446964907009840023644401994013457468837455140331578268642517697945390319089463541388080569398374873228752921897678940332050406994011437231634303608704223145390228074087922901239478374991949372306413157758278029522534299413919735715864599284769202556071242381348472464716517735026291259010477833523908207';
      final expectedBits = 1024;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
      expect(result.bits, expectedBits);
    });

    test('Big integer (4096 bit)', () {
      final test =
          '02820201009BA9ABBF614A97AF2F97669A745FD0D996FDCFE2E466EF1F1F4733C244A3DF9ADE1FB554DD157C6935116FBBC80C8E6A181ED88FD916BC1048365CF063B3905A5C2437D7A3D6CB0971B9F1017284B07DDB4D80CDFCD36FC9F8DAB60E82D24585A81B68A83DE8F4446CBDA1C2CB03BE8C3E130084DF4A48C0E3220AE8E937A7184CB1090D23567F044DD9178418A5C8DA409473EBCE0E573C03813A9D0AA1574369AC576D799078E5B5B43BD8BC4C8D28A1A7A3A7BA024E25D12AAEEDAE0322B86B200F302854957FE0EECE0A669DD1402D6E22AF9D1AC10519D26FC0F29FF87BB30242FB50A91D2D930F23ABC6C10F92FFD0A215F55309711CFF451384E6265EF8E0881C0AFC16B6A87306B8F0638402A0C65AECE774DF70AEA38325EAD6C7978793A7C68A8A33976037103E973E6E2915D6A10FD1882C129F6FAAA4C642EB41A2E39543D301856D8EBB3BF32336C7FE3BE0A1250748ABC98974FF088F80BFC09665F3EEEC4B68BD9D88C331B340F1E8CFF638BB9CE4D17FD4E5589B7CFAD4F30E9B7591E4BA522E197ED1F5CD5A19FCBA06F6FB52A84B9904DDF8F9B48B50A34E6289F08724FA8342C187FAD52D292A5A717A646AD72760630DDBCE49F58D1F90893217F87343B8D25A938661D6E1750AEA796676884F71EB0425D60A5A7A93E5B94B17400FB1B6B9F5DE4FDCE0B3AC3B117060844A436E9920C029710AC065';
      final expected =
          '635048724432704421127930570668665246853305382538324205739741643121831497295424070220821366244137115920753022123888627038218427491681054376713237422498116573180444839575827154645186734602336866679804832661256616738257119870932328599495025506292424741581222812593482590762754785441060866630543522468678295806775919446210955958208696766307578451905771148370694894591388931494246786732600822191966681852303750991082312180670980233382216493445574638820565887523903118457551295241540793541306271618874366356869335229283992012581380459991160410157116077111142487644315609688092841697874946124416376553323373756926990721842430477982958383467149331238064901788481621489266725616974850293388387825359434286033332681714766010619113405542747712973535303497912234899589502990216128180823653963322406352206636893824027962569732222882297210841939793442415179615290739900774082858983244011679281115202763730964934473392333219986431517733237277686866318351054204026883453068392486990840498271719737813876367239342153571643327128417739316281558041652406500713712661305061745568036561978158652008943224271511931676512028205883718704503533046383542018858616087454820845906934069146870330990447993387221061968484774662499598623702280426558025111180066917';
      final expectedBits = 4096;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
      expect(result.bits, expectedBits);
    });
  });

  group('Numbers', () {
    test('Padded 127', () {
      final test = '0202007F';
      final expected = '127';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
    });

    test('Negative 129', () {
      final test = '0202FF7F';
      final expected = '-129';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
    });

    test('Negative 1000 (2)', () {
      final test = '0202FC18';
      final expected = '-1000';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
    });

    test('Negative 1000 (4)', () {
      final test = '0204FFFFFC18';
      final expected = '-1000';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
    });

    test('Negative 1000 (8)', () {
      final test = '0208FFFFFFFFFFFFFC18';
      final expected = '-1000';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
    });

    test('Negative 1000 (16)', () {
      final test = '0210FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC18';
      final expected = '-1000';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
    });

    test('Negative 8388607', () {
      final test = '0203800001';
      final expected = '-8388607';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
    });

    test('Zero (2)', () {
      final test = '02020000';
      final expected = '0';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
    });

    test('Negative 1 (4)', () {
      final test = '0204FFFFFFFF';
      final expected = '-1';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1Integer).value.toString(), expected);
    });
  });

  group('Object Itentifiers', () {
    test('Big OID arc', () {
      final test = '060C69C7C79AB78084C289F9870D';
      final expected = '2.25.84478768945400492475277';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });

    test('Bigger OID arc', () {
      final test = '06146982968D8D889BCCA8C7B3BDD4C080AAAED78A1B';
      final expected = '2.25.184830721219540099336690027854602552603';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });

    test('OID arc > 2.47', () {
      final test = '060488378952';
      final expected = '2.999.1234';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });

    test('OID with Int10 corner case (1)', () {
      final test = '060782A384F3CAC00A';
      final expected = '2.9999999999930';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });

    test('OID with Int10 corner case (2)', () {
      final test = '060881E3AFEAA69A800A';
      final expected = '2.999999999999930';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });

    test('known OID from Peter Gutmann list', () {
      final test = '06092A864886F70D010105';
      final expected = '1.2.840.113549.1.1.5';
      final expectedDesc = 'sha1WithRSAEncryption';
      final expectedComment = 'PKCS #1';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
      expect(OIDTable[result.value]?.description, expectedDesc);
      expect(OIDTable[result.value]?.comment, expectedComment);
    });

    test('OID root 64 bit - 1', () {
      final test = '060A81FFFFFFFFFFFFFFFF7F';
      final expected = '2.18446744073709551535';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });

    test('OID root 64 bit', () {
      final test = '060A82808080808080808000';
      final expected = '2.18446744073709551536';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });

    test('OID root 64 bit + 1', () {
      final test = '060A82808080808080808001';
      final expected = '2.18446744073709551537';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });

    test('OID derLen20c', () {
      final test =
          '0620FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F';
      final expected =
          '2.26959946667150639794667015087019630673637144422540572481103610249135';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });

    test('OID derLen21c', () {
      final test =
          '0621818080808080808080808080808080808080808080808080808080808080808000';
      final expected =
          '2.26959946667150639794667015087019630673637144422540572481103610249136';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1ObjectIdentifier).value, expected);
    });
  });

  group('Miscellanea', () {
    test('UTF-8 4-byte sequence', () {
      final test = '0C0E4C61706FE280997320F09F9A972E';
      final expected = 'Lapo’s 🚗.';
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1String).value, expected);
    });

    test('Example 8.6.4.2: bit string (primitive encoding)', () {
      final test = '0307040A3B5F291CD0';
      final expected = '00001010001110110101111100101001000111001101';
      final expectedBits = 44;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.value.length, expectedBits);
    });

    test('Example 8.6.4.2: bit string (constructed encoding)', () {
      final test = '23800303000A3B0305045F291CD00000';
      final expected = '00001010001110110101111100101001000111001101';
      final expectedBits = 44;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.value.length, expectedBits);
    });

    test('Bit string (recursive constructed)', () {
      final test = '23800303000A3B230A0302005F030404291CD00000';
      final expected = '00001010001110110101111100101001000111001101';
      final expectedBits = 44;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.value.length, expectedBits);
    });

    test('not constructed, but contains structures', () {
      final test =
          '0348003045022100DE601E573DAFB59BC551D58E3E7B9EDA0612DD0112805A2217B734759B884417022067C3FDE60780D41C1D7A3B90291F3D39C4DC2F206DCCBA2F982C06B67C09B232';
      final expected =
          '0011000001000101000000100010000100000000110111100110000000011110010101110011110110101111101101011001101111000101010100011101010110001110001111100111101110011110110110100000011000010010110111010000000100010010100000000101101000100010000101111011011100110100011101011001101110001000010001000001011100000010001000000110011111000011111111011110011000000111100000001101010000011100000111010111101000111011100100000010100100011111001111010011100111000100110111000010111100100000011011011100110010111010001011111001100000101100000001101011011001111100000010011011001000110010';
      final expectedBits = 568;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.value.length, expectedBits);
    });

    test('Octet string with ASCII content', () {
      final test = '040731323334353637';
      final expected = '1234567';
      final expectedBytes = 7;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
      expect(result.value.length, expectedBytes);
    });

    test('Octet string with UTF-8 content', () {
      final test = '0407312E3233E282AC';
      final expected = '1.23€';
      // Can't separte the surrogate chars of the euro sign (3 bytes "E282AC")
      // final expectedBytes = 7;
      final result = decoder.convert(HexDecoder.decode(test));
      expect((result as ASN1DataString).value, expected);
    });
  });
}
