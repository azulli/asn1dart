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

class OIDEntry {
  final String description;
  final String comment;
  final bool warning;

  const OIDEntry(this.description, this.comment, this.warning);
}

const OIDTable = <String, OIDEntry>{
  '0.2.262.1.10': OIDEntry('Telesec', 'Deutsche Telekom', false),
  '0.2.262.1.10.0': OIDEntry('extension', 'Telesec', false),
  '0.2.262.1.10.1': OIDEntry('mechanism', 'Telesec', false),
  '0.2.262.1.10.1.0': OIDEntry('authentication', 'Telesec mechanism', false),
  '0.2.262.1.10.1.0.1':
      OIDEntry('passwordAuthentication', 'Telesec authentication', false),
  '0.2.262.1.10.1.0.2': OIDEntry(
      'protectedPasswordAuthentication', 'Telesec authentication', false),
  '0.2.262.1.10.1.0.3':
      OIDEntry('oneWayX509Authentication', 'Telesec authentication', false),
  '0.2.262.1.10.1.0.4':
      OIDEntry('twoWayX509Authentication', 'Telesec authentication', false),
  '0.2.262.1.10.1.0.5':
      OIDEntry('threeWayX509Authentication', 'Telesec authentication', false),
  '0.2.262.1.10.1.0.6':
      OIDEntry('oneWayISO9798Authentication', 'Telesec authentication', false),
  '0.2.262.1.10.1.0.7':
      OIDEntry('twoWayISO9798Authentication', 'Telesec authentication', false),
  '0.2.262.1.10.1.0.8':
      OIDEntry('telekomAuthentication', 'Telesec authentication', false),
  '0.2.262.1.10.1.1': OIDEntry('signature', 'Telesec mechanism', false),
  '0.2.262.1.10.1.1.1':
      OIDEntry('md4WithRSAAndISO9697', 'Telesec mechanism', false),
  '0.2.262.1.10.1.1.2': OIDEntry(
      'md4WithRSAAndTelesecSignatureStandard', 'Telesec mechanism', false),
  '0.2.262.1.10.1.1.3':
      OIDEntry('md5WithRSAAndISO9697', 'Telesec mechanism', false),
  '0.2.262.1.10.1.1.4': OIDEntry(
      'md5WithRSAAndTelesecSignatureStandard', 'Telesec mechanism', false),
  '0.2.262.1.10.1.1.5': OIDEntry('ripemd160WithRSAAndTelekomSignatureStandard',
      'Telesec mechanism', false),
  '0.2.262.1.10.1.1.9':
      OIDEntry('hbciRsaSignature', 'Telesec signature', false),
  '0.2.262.1.10.1.2': OIDEntry('encryption', 'Telesec mechanism', false),
  '0.2.262.1.10.1.2.0': OIDEntry('none', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.1': OIDEntry('rsaTelesec', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.2': OIDEntry('des', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.2.1': OIDEntry('desECB', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.2.2': OIDEntry('desCBC', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.2.3': OIDEntry('desOFB', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.2.4': OIDEntry('desCFB8', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.2.5': OIDEntry('desCFB64', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.3': OIDEntry('des3', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.3.1': OIDEntry('des3ECB', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.3.2': OIDEntry('des3CBC', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.3.3': OIDEntry('des3OFB', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.3.4': OIDEntry('des3CFB8', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.3.5': OIDEntry('des3CFB64', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.4': OIDEntry('magenta', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.5': OIDEntry('idea', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.5.1': OIDEntry('ideaECB', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.5.2': OIDEntry('ideaCBC', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.5.3': OIDEntry('ideaOFB', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.5.4': OIDEntry('ideaCFB8', 'Telesec encryption', false),
  '0.2.262.1.10.1.2.5.5': OIDEntry('ideaCFB64', 'Telesec encryption', false),
  '0.2.262.1.10.1.3': OIDEntry('oneWayFunction', 'Telesec mechanism', false),
  '0.2.262.1.10.1.3.1': OIDEntry('md4', 'Telesec one-way function', false),
  '0.2.262.1.10.1.3.2': OIDEntry('md5', 'Telesec one-way function', false),
  '0.2.262.1.10.1.3.3':
      OIDEntry('sqModNX509', 'Telesec one-way function', false),
  '0.2.262.1.10.1.3.4':
      OIDEntry('sqModNISO', 'Telesec one-way function', false),
  '0.2.262.1.10.1.3.5':
      OIDEntry('ripemd128', 'Telesec one-way function', false),
  '0.2.262.1.10.1.3.6':
      OIDEntry('hashUsingBlockCipher', 'Telesec one-way function', false),
  '0.2.262.1.10.1.3.7': OIDEntry('mac', 'Telesec one-way function', false),
  '0.2.262.1.10.1.3.8':
      OIDEntry('ripemd160', 'Telesec one-way function', false),
  '0.2.262.1.10.1.4': OIDEntry('fecFunction', 'Telesec mechanism', false),
  '0.2.262.1.10.1.4.1': OIDEntry('reedSolomon', 'Telesec mechanism', false),
  '0.2.262.1.10.2': OIDEntry('module', 'Telesec', false),
  '0.2.262.1.10.2.0': OIDEntry('algorithms', 'Telesec module', false),
  '0.2.262.1.10.2.1': OIDEntry('attributeTypes', 'Telesec module', false),
  '0.2.262.1.10.2.2': OIDEntry('certificateTypes', 'Telesec module', false),
  '0.2.262.1.10.2.3': OIDEntry('messageTypes', 'Telesec module', false),
  '0.2.262.1.10.2.4': OIDEntry('plProtocol', 'Telesec module', false),
  '0.2.262.1.10.2.5':
      OIDEntry('smeAndComponentsOfSme', 'Telesec module', false),
  '0.2.262.1.10.2.6': OIDEntry('fec', 'Telesec module', false),
  '0.2.262.1.10.2.7': OIDEntry('usefulDefinitions', 'Telesec module', false),
  '0.2.262.1.10.2.8': OIDEntry('stefiles', 'Telesec module', false),
  '0.2.262.1.10.2.9': OIDEntry('sadmib', 'Telesec module', false),
  '0.2.262.1.10.2.10': OIDEntry('electronicOrder', 'Telesec module', false),
  '0.2.262.1.10.2.11':
      OIDEntry('telesecTtpAsymmetricApplication', 'Telesec module', false),
  '0.2.262.1.10.2.12':
      OIDEntry('telesecTtpBasisApplication', 'Telesec module', false),
  '0.2.262.1.10.2.13': OIDEntry('telesecTtpMessages', 'Telesec module', false),
  '0.2.262.1.10.2.14':
      OIDEntry('telesecTtpTimeStampApplication', 'Telesec module', false),
  '0.2.262.1.10.3': OIDEntry('objectClass', 'Telesec', false),
  '0.2.262.1.10.3.0':
      OIDEntry('telesecOtherName', 'Telesec object class', false),
  '0.2.262.1.10.3.1': OIDEntry('directory', 'Telesec object class', false),
  '0.2.262.1.10.3.2': OIDEntry('directoryType', 'Telesec object class', false),
  '0.2.262.1.10.3.3': OIDEntry('directoryGroup', 'Telesec object class', false),
  '0.2.262.1.10.3.4': OIDEntry('directoryUser', 'Telesec object class', false),
  '0.2.262.1.10.3.5':
      OIDEntry('symmetricKeyEntry', 'Telesec object class', false),
  '0.2.262.1.10.4': OIDEntry('package', 'Telesec', false),
  '0.2.262.1.10.5': OIDEntry('parameter', 'Telesec', false),
  '0.2.262.1.10.6': OIDEntry('nameBinding', 'Telesec', false),
  '0.2.262.1.10.7': OIDEntry('attribute', 'Telesec', false),
  '0.2.262.1.10.7.0':
      OIDEntry('applicationGroupIdentifier', 'Telesec attribute', false),
  '0.2.262.1.10.7.1': OIDEntry('certificateType', 'Telesec attribute', false),
  '0.2.262.1.10.7.2':
      OIDEntry('telesecCertificate', 'Telesec attribute', false),
  '0.2.262.1.10.7.3': OIDEntry('certificateNumber', 'Telesec attribute', false),
  '0.2.262.1.10.7.4':
      OIDEntry('certificateRevocationList', 'Telesec attribute', false),
  '0.2.262.1.10.7.5': OIDEntry('creationDate', 'Telesec attribute', false),
  '0.2.262.1.10.7.6': OIDEntry('issuer', 'Telesec attribute', false),
  '0.2.262.1.10.7.7': OIDEntry('namingAuthority', 'Telesec attribute', false),
  '0.2.262.1.10.7.8':
      OIDEntry('publicKeyDirectory', 'Telesec attribute', false),
  '0.2.262.1.10.7.9': OIDEntry('securityDomain', 'Telesec attribute', false),
  '0.2.262.1.10.7.10': OIDEntry('subject', 'Telesec attribute', false),
  '0.2.262.1.10.7.11': OIDEntry('timeOfRevocation', 'Telesec attribute', false),
  '0.2.262.1.10.7.12':
      OIDEntry('userGroupReference', 'Telesec attribute', false),
  '0.2.262.1.10.7.13': OIDEntry('validity', 'Telesec attribute', false),
  '0.2.262.1.10.7.14': OIDEntry('zert93', 'Telesec attribute', false),
  '0.2.262.1.10.7.15': OIDEntry('securityMessEnv', 'Telesec attribute', false),
  '0.2.262.1.10.7.16':
      OIDEntry('anonymizedPublicKeyDirectory', 'Telesec attribute', false),
  '0.2.262.1.10.7.17': OIDEntry('telesecGivenName', 'Telesec attribute', false),
  '0.2.262.1.10.7.18': OIDEntry('nameAdditions', 'Telesec attribute', false),
  '0.2.262.1.10.7.19':
      OIDEntry('telesecPostalCode', 'Telesec attribute', false),
  '0.2.262.1.10.7.20':
      OIDEntry('nameDistinguisher', 'Telesec attribute', false),
  '0.2.262.1.10.7.21':
      OIDEntry('telesecCertificateList', 'Telesec attribute', false),
  '0.2.262.1.10.7.22':
      OIDEntry('teletrustCertificateList', 'Telesec attribute', false),
  '0.2.262.1.10.7.23':
      OIDEntry('x509CertificateList', 'Telesec attribute', false),
  '0.2.262.1.10.7.24': OIDEntry('timeOfIssue', 'Telesec attribute', false),
  '0.2.262.1.10.7.25':
      OIDEntry('physicalCardNumber', 'Telesec attribute', false),
  '0.2.262.1.10.7.26': OIDEntry('fileType', 'Telesec attribute', false),
  '0.2.262.1.10.7.27': OIDEntry('ctlFileIsArchive', 'Telesec attribute', false),
  '0.2.262.1.10.7.28': OIDEntry('emailAddress', 'Telesec attribute', false),
  '0.2.262.1.10.7.29':
      OIDEntry('certificateTemplateList', 'Telesec attribute', false),
  '0.2.262.1.10.7.30': OIDEntry('directoryName', 'Telesec attribute', false),
  '0.2.262.1.10.7.31':
      OIDEntry('directoryTypeName', 'Telesec attribute', false),
  '0.2.262.1.10.7.32':
      OIDEntry('directoryGroupName', 'Telesec attribute', false),
  '0.2.262.1.10.7.33':
      OIDEntry('directoryUserName', 'Telesec attribute', false),
  '0.2.262.1.10.7.34': OIDEntry('revocationFlag', 'Telesec attribute', false),
  '0.2.262.1.10.7.35':
      OIDEntry('symmetricKeyEntryName', 'Telesec attribute', false),
  '0.2.262.1.10.7.36': OIDEntry('glNumber', 'Telesec attribute', false),
  '0.2.262.1.10.7.37': OIDEntry('goNumber', 'Telesec attribute', false),
  '0.2.262.1.10.7.38': OIDEntry('gKeyData', 'Telesec attribute', false),
  '0.2.262.1.10.7.39': OIDEntry('zKeyData', 'Telesec attribute', false),
  '0.2.262.1.10.7.40': OIDEntry('ktKeyData', 'Telesec attribute', false),
  '0.2.262.1.10.7.41': OIDEntry('ktKeyNumber', 'Telesec attribute', false),
  '0.2.262.1.10.7.51':
      OIDEntry('timeOfRevocationGen', 'Telesec attribute', false),
  '0.2.262.1.10.7.52': OIDEntry('liabilityText', 'Telesec attribute', false),
  '0.2.262.1.10.8': OIDEntry('attributeGroup', 'Telesec', false),
  '0.2.262.1.10.9': OIDEntry('action', 'Telesec', false),
  '0.2.262.1.10.10': OIDEntry('notification', 'Telesec', false),
  '0.2.262.1.10.11': OIDEntry('snmp-mibs', 'Telesec', false),
  '0.2.262.1.10.11.1':
      OIDEntry('securityApplication', 'Telesec SNMP MIBs', false),
  '0.2.262.1.10.12':
      OIDEntry('certAndCrlExtensionDefinitions', 'Telesec', false),
  '0.2.262.1.10.12.0':
      OIDEntry('liabilityLimitationFlag', 'Telesec cert/CRL extension', false),
  '0.2.262.1.10.12.1':
      OIDEntry('telesecCertIdExt', 'Telesec cert/CRL extension', false),
  '0.2.262.1.10.12.2':
      OIDEntry('Telesec policyIdentifier', 'Telesec cert/CRL extension', false),
  '0.2.262.1.10.12.3':
      OIDEntry('telesecPolicyQualifierID', 'Telesec cert/CRL extension', false),
  '0.2.262.1.10.12.4':
      OIDEntry('telesecCRLFilteredExt', 'Telesec cert/CRL extension', false),
  '0.2.262.1.10.12.5':
      OIDEntry('telesecCRLFilterExt', 'Telesec cert/CRL extension', false),
  '0.2.262.1.10.12.6': OIDEntry(
      'telesecNamingAuthorityExt', 'Telesec cert/CRL extension', false),
  '0.4.0.127.0.7': OIDEntry('bsi', 'BSI TR-03110/TR-03111', false),
  '0.4.0.127.0.7.1': OIDEntry('bsiEcc', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1': OIDEntry('bsifieldType', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.1': OIDEntry('bsiPrimeField', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.2':
      OIDEntry('bsiCharacteristicTwoField', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.2.2': OIDEntry('bsiECTLVKeyFormat', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.2.2.1':
      OIDEntry('bsiECTLVPublicKey', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.2.3':
      OIDEntry('bsiCharacteristicTwoBasis', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.2.3.1': OIDEntry('bsiGnBasis', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.2.3.2': OIDEntry('bsiTpBasis', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.2.3.3': OIDEntry('bsiPpBasis', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.4.1':
      OIDEntry('bsiEcdsaSignatures', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.4.1.1':
      OIDEntry('bsiEcdsaWithSHA1', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.4.1.2':
      OIDEntry('bsiEcdsaWithSHA224', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.4.1.3':
      OIDEntry('bsiEcdsaWithSHA256', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.4.1.4':
      OIDEntry('bsiEcdsaWithSHA384', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.4.1.5':
      OIDEntry('bsiEcdsaWithSHA512', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.4.1.6':
      OIDEntry('bsiEcdsaWithRIPEMD160', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.1':
      OIDEntry('bsiEckaEgX963KDF', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.1.1':
      OIDEntry('bsiEckaEgX963KDFWithSHA1', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.1.2':
      OIDEntry('bsiEckaEgX963KDFWithSHA224', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.1.3':
      OIDEntry('bsiEckaEgX963KDFWithSHA256', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.1.4':
      OIDEntry('bsiEckaEgX963KDFWithSHA384', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.1.5':
      OIDEntry('bsiEckaEgX963KDFWithSHA512', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.1.6':
      OIDEntry('bsiEckaEgX963KDFWithRIPEMD160', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.2':
      OIDEntry('bsiEckaEgSessionKDF', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.2.1':
      OIDEntry('bsiEckaEgSessionKDFWith3DES', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.2.2':
      OIDEntry('bsiEckaEgSessionKDFWithAES128', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.2.3':
      OIDEntry('bsiEckaEgSessionKDFWithAES192', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.1.2.4':
      OIDEntry('bsiEckaEgSessionKDFWithAES256', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2': OIDEntry('bsiEckaDH', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.1':
      OIDEntry('bsiEckaDHX963KDF', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.1.1':
      OIDEntry('bsiEckaDHX963KDFWithSHA1', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.1.2':
      OIDEntry('bsiEckaDHX963KDFWithSHA224', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.1.3':
      OIDEntry('bsiEckaDHX963KDFWithSHA256', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.1.4':
      OIDEntry('bsiEckaDHX963KDFWithSHA384', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.1.5':
      OIDEntry('bsiEckaDHX963KDFWithSHA512', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.1.6':
      OIDEntry('bsiEckaDHX963KDFWithRIPEMD160', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.2':
      OIDEntry('bsiEckaDHSessionKDF', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.2.1':
      OIDEntry('bsiEckaDHSessionKDFWith3DES', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.2.2':
      OIDEntry('bsiEckaDHSessionKDFWithAES128', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.2.3':
      OIDEntry('bsiEckaDHSessionKDFWithAES192', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.1.5.2.2.4':
      OIDEntry('bsiEckaDHSessionKDFWithAES256', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.2': OIDEntry('bsiEcKeyType', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.2.1': OIDEntry('bsiEcPublicKey', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.5.1': OIDEntry('bsiKaeg', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.5.1.1':
      OIDEntry('bsiKaegWithX963KDF', 'BSI TR-03111', false),
  '0.4.0.127.0.7.1.5.1.2':
      OIDEntry('bsiKaegWith3DESKDF', 'BSI TR-03111', false),
  '0.4.0.127.0.7.2.2.1': OIDEntry('bsiPK',
      'BSI TR-03110. Formerly known as bsiCA, now moved to ...2.2.3.x', false),
  '0.4.0.127.0.7.2.2.1.1': OIDEntry(
      'bsiPK_DH',
      'BSI TR-03110. Formerly known as bsiCA_DH, now moved to ...2.2.3.x',
      false),
  '0.4.0.127.0.7.2.2.1.2': OIDEntry(
      'bsiPK_ECDH',
      'BSI TR-03110. Formerly known as bsiCA_ECDH, now moved to ...2.2.3.x',
      false),
  '0.4.0.127.0.7.2.2.2': OIDEntry('bsiTA', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.1': OIDEntry('bsiTA_RSA', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.1.1':
      OIDEntry('bsiTA_RSAv1_5_SHA1', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.1.2':
      OIDEntry('bsiTA_RSAv1_5_SHA256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.1.3':
      OIDEntry('bsiTA_RSAPSS_SHA1', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.1.4':
      OIDEntry('bsiTA_RSAPSS_SHA256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.1.5':
      OIDEntry('bsiTA_RSAv1_5_SHA512', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.1.6':
      OIDEntry('bsiTA_RSAPSS_SHA512', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.2': OIDEntry('bsiTA_ECDSA', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.2.1':
      OIDEntry('bsiTA_ECDSA_SHA1', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.2.2':
      OIDEntry('bsiTA_ECDSA_SHA224', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.2.3':
      OIDEntry('bsiTA_ECDSA_SHA256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.2.4':
      OIDEntry('bsiTA_ECDSA_SHA384', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.2.2.5':
      OIDEntry('bsiTA_ECDSA_SHA512', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3': OIDEntry('bsiCA', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.1': OIDEntry('bsiCA_DH', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.1.1':
      OIDEntry('bsiCA_DH_3DES_CBC_CBC', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.1.2':
      OIDEntry('bsiCA_DH_AES_CBC_CMAC_128', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.1.3':
      OIDEntry('bsiCA_DH_AES_CBC_CMAC_192', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.1.4':
      OIDEntry('bsiCA_DH_AES_CBC_CMAC_256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.2': OIDEntry('bsiCA_ECDH', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.2.1':
      OIDEntry('bsiCA_ECDH_3DES_CBC_CBC', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.2.2':
      OIDEntry('bsiCA_ECDH_AES_CBC_CMAC_128', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.2.3':
      OIDEntry('bsiCA_ECDH_AES_CBC_CMAC_192', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.3.2.4':
      OIDEntry('bsiCA_ECDH_AES_CBC_CMAC_256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4': OIDEntry('bsiPACE', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.1': OIDEntry('bsiPACE_DH_GM', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.1.1':
      OIDEntry('bsiPACE_DH_GM_3DES_CBC_CBC', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.1.2':
      OIDEntry('bsiPACE_DH_GM_AES_CBC_CMAC_128', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.1.3':
      OIDEntry('bsiPACE_DH_GM_AES_CBC_CMAC_192', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.1.4':
      OIDEntry('bsiPACE_DH_GM_AES_CBC_CMAC_256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.2': OIDEntry('bsiPACE_ECDH_GM', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.2.1':
      OIDEntry('bsiPACE_ECDH_GM_3DES_CBC_CBC', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.2.2':
      OIDEntry('bsiPACE_ECDH_GM_AES_CBC_CMAC_128', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.2.3':
      OIDEntry('bsiPACE_ECDH_GM_AES_CBC_CMAC_192', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.2.4':
      OIDEntry('bsiPACE_ECDH_GM_AES_CBC_CMAC_256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.3': OIDEntry('bsiPACE_DH_IM', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.3.1':
      OIDEntry('bsiPACE_DH_IM_3DES_CBC_CBC', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.3.2':
      OIDEntry('bsiPACE_DH_IM_AES_CBC_CMAC_128', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.3.3':
      OIDEntry('bsiPACE_DH_IM_AES_CBC_CMAC_192', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.3.4':
      OIDEntry('bsiPACE_DH_IM_AES_CBC_CMAC_256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.4': OIDEntry('bsiPACE_ECDH_IM', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.4.1':
      OIDEntry('bsiPACE_ECDH_IM_3DES_CBC_CBC', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.4.2':
      OIDEntry('bsiPACE_ECDH_IM_AES_CBC_CMAC_128', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.4.3':
      OIDEntry('bsiPACE_ECDH_IM_AES_CBC_CMAC_192', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.4.4.4':
      OIDEntry('bsiPACE_ECDH_IM_AES_CBC_CMAC_256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5': OIDEntry('bsiRI', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.1': OIDEntry('bsiRI_DH', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.1.1': OIDEntry('bsiRI_DH_SHA1', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.1.2': OIDEntry('bsiRI_DH_SHA224', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.1.3': OIDEntry('bsiRI_DH_SHA256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.1.4': OIDEntry('bsiRI_DH_SHA384', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.1.5': OIDEntry('bsiRI_DH_SHA512', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.2': OIDEntry('bsiRI_ECDH', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.2.1': OIDEntry('bsiRI_ECDH_SHA1', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.2.2':
      OIDEntry('bsiRI_ECDH_SHA224', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.2.3':
      OIDEntry('bsiRI_ECDH_SHA256', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.2.4':
      OIDEntry('bsiRI_ECDH_SHA384', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.5.2.5':
      OIDEntry('bsiRI_ECDH_SHA512', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.6': OIDEntry('bsiCardInfo', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.7': OIDEntry('bsiEidSecurity', 'BSI TR-03110', false),
  '0.4.0.127.0.7.2.2.8': OIDEntry('bsiPT', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.2': OIDEntry('bsiEACRoles', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.2.1': OIDEntry('bsiEACRolesIS', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.2.2': OIDEntry('bsiEACRolesAT', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.2.3': OIDEntry('bsiEACRolesST', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.3': OIDEntry('bsiTAv2ce', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.3.1':
      OIDEntry('bsiTAv2ceDescription', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.3.1.1':
      OIDEntry('bsiTAv2ceDescriptionPlainText', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.3.1.2':
      OIDEntry('bsiTAv2ceDescriptionIA5String', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.3.1.3':
      OIDEntry('bsiTAv2ceDescriptionOctetString', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.3.2':
      OIDEntry('bsiTAv2ceTerminalSector', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.4': OIDEntry('bsiAuxData', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.4.1':
      OIDEntry('bsiAuxDataBirthday', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.4.2':
      OIDEntry('bsiAuxDataExpireDate', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.4.3':
      OIDEntry('bsiAuxDataCommunityID', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5': OIDEntry('bsiDefectList', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.1':
      OIDEntry('bsiDefectAuthDefect', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.1.1':
      OIDEntry('bsiDefectCertRevoked', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.1.2':
      OIDEntry('bsiDefectCertReplaced', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.1.3':
      OIDEntry('bsiDefectChipAuthKeyRevoked', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.1.4':
      OIDEntry('bsiDefectActiveAuthKeyRevoked', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.2':
      OIDEntry('bsiDefectEPassportDefect', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.2.1':
      OIDEntry('bsiDefectEPassportDGMalformed', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.2.2':
      OIDEntry('bsiDefectSODInvalid', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.3':
      OIDEntry('bsiDefectEIDDefect', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.3.1':
      OIDEntry('bsiDefectEIDDGMalformed', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.3.2':
      OIDEntry('bsiDefectEIDIntegrity', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.4':
      OIDEntry('bsiDefectDocumentDefect', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.4.1':
      OIDEntry('bsiDefectCardSecurityMalformed', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.4.2':
      OIDEntry('bsiDefectChipSecurityMalformed', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.5.4.3':
      OIDEntry('bsiDefectPowerDownReq', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.1.6':
      OIDEntry('bsiListContentDescription', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.2.1': OIDEntry('bsiSecurityObject', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.2.2': OIDEntry('bsiBlackList', 'BSI TR-03110', false),
  '0.4.0.127.0.7.3.4.2.2':
      OIDEntry('bsiSignedUpdateDeviceAdmin', 'BSI TR-03109', false),
  '0.4.0.127.0.7.4.1.1.1': OIDEntry('bsiCertReqMsgs', 'BSI TR-03109', false),
  '0.4.0.127.0.7.4.1.1.2':
      OIDEntry('bsiCertReqMsgswithOuterSignature', 'BSI TR-03109', false),
  '0.4.0.127.0.7.4.1.1.3':
      OIDEntry('bsiAuthorizedCertReqMsgs', 'BSI TR-03109', false),
  '0.4.0.127.0.7.4.1.2.2': OIDEntry('bsiSignedRevReqs', 'BSI TR-03109', false),
  '0.4.0.1862': OIDEntry(
      'etsiQcsProfile', 'ETSI TS 101 862 qualified certificates', false),
  '0.4.0.1862.1':
      OIDEntry('etsiQcs', 'ETSI TS 101 862 qualified certificates', false),
  '0.4.0.1862.1.1': OIDEntry(
      'etsiQcsCompliance', 'ETSI TS 101 862 qualified certificates', false),
  '0.4.0.1862.1.2': OIDEntry(
      'etsiQcsLimitValue', 'ETSI TS 101 862 qualified certificates', false),
  '0.4.0.1862.1.3': OIDEntry('etsiQcsRetentionPeriod',
      'ETSI TS 101 862 qualified certificates', false),
  '0.4.0.1862.1.4': OIDEntry(
      'etsiQcsQcSSCD', 'ETSI TS 101 862 qualified certificates', false),
  '0.9.2342.19200300.100.1.1':
      OIDEntry('userID', 'Some oddball X.500 attribute collection', false),
  '0.9.2342.19200300.100.1.3': OIDEntry(
      'rfc822Mailbox', 'Some oddball X.500 attribute collection', false),
  '0.9.2342.19200300.100.1.25': OIDEntry(
      'domainComponent', 'Men are from Mars, this OID is from Pluto', false),
  '1.0.10118.3.0.49': OIDEntry('ripemd160', 'ISO 10118-3 hash function', false),
  '1.0.10118.3.0.50': OIDEntry('ripemd128', 'ISO 10118-3 hash function', false),
  '1.0.10118.3.0.55': OIDEntry('whirlpool', 'ISO 10118-3 hash function', false),
  '1.0.18033.2': OIDEntry('iso18033-2', 'ISO 18033-2', false),
  '1.0.18033.2.2': OIDEntry('kem', 'ISO 18033-2 algorithms', false),
  '1.0.18033.2.2.4': OIDEntry('kemRSA', 'ISO 18033-2 KEM algorithms', false),
  '1.2.36.1.3.1.1.1': OIDEntry('qgpki', 'Queensland Government PKI', false),
  '1.2.36.1.3.1.1.1.1': OIDEntry('qgpkiPolicies', 'QGPKI policies', false),
  '1.2.36.1.3.1.1.1.1.1': OIDEntry('qgpkiMedIntermedCA', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.1.1':
      OIDEntry('qgpkiMedIntermedIndividual', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.1.2':
      OIDEntry('qgpkiMedIntermedDeviceControl', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.1.3':
      OIDEntry('qgpkiMedIntermedDevice', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.1.4':
      OIDEntry('qgpkiMedIntermedAuthorisedParty', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.1.5':
      OIDEntry('qgpkiMedIntermedDeviceSystem', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.2': OIDEntry('qgpkiMedIssuingCA', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.2.1':
      OIDEntry('qgpkiMedIssuingIndividual', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.2.2':
      OIDEntry('qgpkiMedIssuingDeviceControl', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.2.3':
      OIDEntry('qgpkiMedIssuingDevice', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.2.4':
      OIDEntry('qgpkiMedIssuingAuthorisedParty', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.2.5':
      OIDEntry('qgpkiMedIssuingClientAuth', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.2.6':
      OIDEntry('qgpkiMedIssuingServerAuth', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.2.7':
      OIDEntry('qgpkiMedIssuingDataProt', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.2.8':
      OIDEntry('qgpkiMedIssuingTokenAuth', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.3':
      OIDEntry('qgpkiBasicIntermedCA', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.3.1':
      OIDEntry('qgpkiBasicIntermedDeviceSystem', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.4':
      OIDEntry('qgpkiBasicIssuingCA', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.4.1':
      OIDEntry('qgpkiBasicIssuingClientAuth', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.4.2':
      OIDEntry('qgpkiBasicIssuingServerAuth', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.1.4.3':
      OIDEntry('qgpkiBasicIssuingDataSigning', 'QGPKI policy', false),
  '1.2.36.1.3.1.1.1.2':
      OIDEntry('qgpkiAssuranceLevel', 'QGPKI assurance level', false),
  '1.2.36.1.3.1.1.1.2.1':
      OIDEntry('qgpkiAssuranceRudimentary', 'QGPKI assurance level', false),
  '1.2.36.1.3.1.1.1.2.2':
      OIDEntry('qgpkiAssuranceBasic', 'QGPKI assurance level', false),
  '1.2.36.1.3.1.1.1.2.3':
      OIDEntry('qgpkiAssuranceMedium', 'QGPKI assurance level', false),
  '1.2.36.1.3.1.1.1.2.4':
      OIDEntry('qgpkiAssuranceHigh', 'QGPKI assurance level', false),
  '1.2.36.1.3.1.1.1.3': OIDEntry('qgpkiCertFunction', 'QGPKI policies', false),
  '1.2.36.1.3.1.1.1.3.1':
      OIDEntry('qgpkiFunctionIndividual', 'QGPKI policies', false),
  '1.2.36.1.3.1.1.1.3.2':
      OIDEntry('qgpkiFunctionDevice', 'QGPKI policies', false),
  '1.2.36.1.3.1.1.1.3.3':
      OIDEntry('qgpkiFunctionAuthorisedParty', 'QGPKI policies', false),
  '1.2.36.1.3.1.1.1.3.4':
      OIDEntry('qgpkiFunctionDeviceControl', 'QGPKI policies', false),
  '1.2.36.1.3.1.2': OIDEntry('qpspki', 'Queensland Police PKI', false),
  '1.2.36.1.3.1.2.1':
      OIDEntry('qpspkiPolicies', 'Queensland Police PKI', false),
  '1.2.36.1.3.1.2.1.2':
      OIDEntry('qpspkiPolicyBasic', 'Queensland Police PKI', false),
  '1.2.36.1.3.1.2.1.3':
      OIDEntry('qpspkiPolicyMedium', 'Queensland Police PKI', false),
  '1.2.36.1.3.1.2.1.4':
      OIDEntry('qpspkiPolicyHigh', 'Queensland Police PKI', false),
  '1.2.36.1.3.1.3.2': OIDEntry('qtmrpki', 'Queensland Transport PKI', false),
  '1.2.36.1.3.1.3.2.1':
      OIDEntry('qtmrpkiPolicies', 'Queensland Transport PKI', false),
  '1.2.36.1.3.1.3.2.2':
      OIDEntry('qtmrpkiPurpose', 'Queensland Transport PKI', false),
  '1.2.36.1.3.1.3.2.2.1':
      OIDEntry('qtmrpkiIndividual', 'Queensland Transport PKI purpose', false),
  '1.2.36.1.3.1.3.2.2.2': OIDEntry(
      'qtmrpkiDeviceControl', 'Queensland Transport PKI purpose', false),
  '1.2.36.1.3.1.3.2.2.3':
      OIDEntry('qtmrpkiDevice', 'Queensland Transport PKI purpose', false),
  '1.2.36.1.3.1.3.2.2.4': OIDEntry(
      'qtmrpkiAuthorisedParty', 'Queensland Transport PKI purpose', false),
  '1.2.36.1.3.1.3.2.2.5': OIDEntry(
      'qtmrpkiDeviceSystem', 'Queensland Transport PKI purpose', false),
  '1.2.36.1.3.1.3.2.3':
      OIDEntry('qtmrpkiDevice', 'Queensland Transport PKI', false),
  '1.2.36.1.3.1.3.2.3.1': OIDEntry(
      'qtmrpkiDriverLicense', 'Queensland Transport PKI device', false),
  '1.2.36.1.3.1.3.2.3.2': OIDEntry(
      'qtmrpkiIndustryAuthority', 'Queensland Transport PKI device', false),
  '1.2.36.1.3.1.3.2.3.3': OIDEntry(
      'qtmrpkiMarineLicense', 'Queensland Transport PKI device', false),
  '1.2.36.1.3.1.3.2.3.4': OIDEntry(
      'qtmrpkiAdultProofOfAge', 'Queensland Transport PKI device', false),
  '1.2.36.1.3.1.3.2.3.5':
      OIDEntry('qtmrpkiSam', 'Queensland Transport PKI device', false),
  '1.2.36.1.3.1.3.2.4':
      OIDEntry('qtmrpkiAuthorisedParty', 'Queensland Transport PKI', false),
  '1.2.36.1.3.1.3.2.4.1': OIDEntry('qtmrpkiTransportInspector',
      'Queensland Transport PKI authorised party', false),
  '1.2.36.1.3.1.3.2.4.2': OIDEntry('qtmrpkiPoliceOfficer',
      'Queensland Transport PKI authorised party', false),
  '1.2.36.1.3.1.3.2.4.3': OIDEntry(
      'qtmrpkiSystem', 'Queensland Transport PKI authorised party', false),
  '1.2.36.1.3.1.3.2.4.4': OIDEntry('qtmrpkiLiquorLicensingInspector',
      'Queensland Transport PKI authorised party', false),
  '1.2.36.1.3.1.3.2.4.5': OIDEntry('qtmrpkiMarineEnforcementOfficer',
      'Queensland Transport PKI authorised party', false),
  '1.2.36.1.333.1': OIDEntry('australianBusinessNumber',
      'Australian Government corporate taxpayer ID', false),
  '1.2.36.68980861.1.1.2': OIDEntry('signetPersonal', 'Signet CA', false),
  '1.2.36.68980861.1.1.3': OIDEntry('signetBusiness', 'Signet CA', false),
  '1.2.36.68980861.1.1.4': OIDEntry('signetLegal', 'Signet CA', false),
  '1.2.36.68980861.1.1.10': OIDEntry('signetPilot', 'Signet CA', false),
  '1.2.36.68980861.1.1.11': OIDEntry('signetIntraNet', 'Signet CA', false),
  '1.2.36.68980861.1.1.20': OIDEntry('signetPolicy', 'Signet CA', false),
  '1.2.36.75878867.1.100.1.1': OIDEntry(
      'certificatesAustraliaPolicy', 'Certificates Australia CA', false),
  '1.2.156.10197.1': OIDEntry(
      'gmtCryptographicAlgorithm', 'China GM Standards Committee', false),
  '1.2.156.10197.1.100':
      OIDEntry('gmtBlockCipher', 'China GM Standards Committee', false),
  '1.2.156.10197.1.102':
      OIDEntry('sm1Cipher', 'China GM Standards Committee', false),
  '1.2.156.10197.1.103':
      OIDEntry('ssf33Cipher', 'China GM Standards Committee', false),
  '1.2.156.10197.1.104':
      OIDEntry('sm4Cipher', 'China GM Standards Committee', false),
  '1.2.156.10197.1.200':
      OIDEntry('gmtStreamCipher', 'China GM Standards Committee', false),
  '1.2.156.10197.1.201':
      OIDEntry('zucCipher', 'China GM Standards Committee', false),
  '1.2.156.10197.1.300': OIDEntry(
      'gmtPublicKeyCryptography', 'China GM Standards Committee', false),
  '1.2.156.10197.1.301':
      OIDEntry('sm2ECC', 'China GM Standards Committee', false),
  '1.2.156.10197.1.301.1':
      OIDEntry('sm2-1DigitalSignature', 'China GM Standards Committee', false),
  '1.2.156.10197.1.301.2':
      OIDEntry('sm2-2KeyExchange', 'China GM Standards Committee', false),
  '1.2.156.10197.1.301.3': OIDEntry(
      'sm2-3PublicKeyEncryption', 'China GM Standards Committee', false),
  '1.2.156.10197.1.302':
      OIDEntry('gmtSM9IBE', 'China GM Standards Committee', false),
  '1.2.156.10197.1.302.1':
      OIDEntry('sm9-1DigitalSignature', 'China GM Standards Committee', false),
  '1.2.156.10197.1.302.2':
      OIDEntry('sm9-2KeyExchange', 'China GM Standards Committee', false),
  '1.2.156.10197.1.302.3': OIDEntry(
      'sm9-3PublicKeyEncryption', 'China GM Standards Committee', false),
  '1.2.156.10197.1.400':
      OIDEntry('gmtHashAlgorithm', 'China GM Standards Committee', false),
  '1.2.156.10197.1.401':
      OIDEntry('sm3Hash', 'China GM Standards Committee', false),
  '1.2.156.10197.1.401.1':
      OIDEntry('sm3HashWithoutKey', 'China GM Standards Committee', false),
  '1.2.156.10197.1.401.2':
      OIDEntry('sm3HashWithKey', 'China GM Standards Committee', false),
  '1.2.156.10197.1.500':
      OIDEntry('gmtDigestSigning', 'China GM Standards Committee', false),
  '1.2.156.10197.1.501':
      OIDEntry('sm2withSM3', 'China GM Standards Committee', false),
  '1.2.156.10197.1.504':
      OIDEntry('rsaWithSM3', 'China GM Standards Committee', false),
  '1.2.156.10197.4.3': OIDEntry(
      'gmtCertificateAuthority', 'China GM Standards Committee', false),
  '1.2.156.10197.6':
      OIDEntry('gmtStandardClass', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1':
      OIDEntry('gmtFoundationClass', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.1':
      OIDEntry('gmtAlgorithmClass', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.1.1':
      OIDEntry('zucStandard', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.1.2':
      OIDEntry('sm4Standard', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.1.3':
      OIDEntry('sm2Standard', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.1.4':
      OIDEntry('sm3Standard', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.2':
      OIDEntry('gmtIDClass', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.2.1':
      OIDEntry('gmtCryptoID', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.3':
      OIDEntry('gmtOperationModes', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.4':
      OIDEntry('gmtSecurityMechanism', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.4.1':
      OIDEntry('gmtSM2Specification', 'China GM Standards Committee', false),
  '1.2.156.10197.6.1.4.2': OIDEntry('gmtSM2CryptographicMessageSyntax',
      'China GM Standards Committee', false),
  '1.2.156.10197.6.2':
      OIDEntry('gmtDeviceClass', 'China GM Standards Committee', false),
  '1.2.156.10197.6.3':
      OIDEntry('gmtServiceClass', 'China GM Standards Committee', false),
  '1.2.156.10197.6.4':
      OIDEntry('gmtInfrastructure', 'China GM Standards Committee', false),
  '1.2.156.10197.6.5':
      OIDEntry('gmtTestingClass', 'China GM Standards Committee', false),
  '1.2.156.10197.6.5.1':
      OIDEntry('gmtRandomTestingClass', 'China GM Standards Committee', false),
  '1.2.156.10197.6.6':
      OIDEntry('gmtManagementClass', 'China GM Standards Committee', false),
  '1.2.392.200011.61.1.1.1': OIDEntry(
      'mitsubishiSecurityAlgorithm', 'Mitsubishi security algorithm', false),
  '1.2.392.200011.61.1.1.1.1':
      OIDEntry('misty1-cbc', 'Mitsubishi security algorithm', false),
  '1.2.410.200004.1': OIDEntry('kisaAlgorithm', 'KISA algorithm', false),
  '1.2.410.200004.1.1': OIDEntry('kcdsa', 'Korean DSA', false),
  '1.2.410.200004.1.2': OIDEntry('has160', 'Korean hash algorithm', false),
  '1.2.410.200004.1.3':
      OIDEntry('seedECB', 'Korean SEED algorithm, ECB mode', false),
  '1.2.410.200004.1.4':
      OIDEntry('seedCBC', 'Korean SEED algorithm, CBC mode', false),
  '1.2.410.200004.1.5':
      OIDEntry('seedOFB', 'Korean SEED algorithm, OFB mode', false),
  '1.2.410.200004.1.6':
      OIDEntry('seedCFB', 'Korean SEED algorithm, CFB mode', false),
  '1.2.410.200004.1.7':
      OIDEntry('seedMAC', 'Korean SEED algorithm, MAC mode', false),
  '1.2.410.200004.1.8':
      OIDEntry('kcdsaWithHAS160', 'Korean signature algorithm', false),
  '1.2.410.200004.1.9':
      OIDEntry('kcdsaWithSHA1', 'Korean signature algorithm', false),
  '1.2.410.200004.1.10': OIDEntry('pbeWithHAS160AndSEED-ECB',
      'Korean SEED algorithm, PBE key derivation', false),
  '1.2.410.200004.1.11': OIDEntry('pbeWithHAS160AndSEED-CBC',
      'Korean SEED algorithm, PBE key derivation', false),
  '1.2.410.200004.1.12': OIDEntry('pbeWithHAS160AndSEED-CFB',
      'Korean SEED algorithm, PBE key derivation', false),
  '1.2.410.200004.1.13': OIDEntry('pbeWithHAS160AndSEED-OFB',
      'Korean SEED algorithm, PBE key derivation', false),
  '1.2.410.200004.1.14': OIDEntry('pbeWithSHA1AndSEED-ECB',
      'Korean SEED algorithm, PBE key derivation', false),
  '1.2.410.200004.1.15': OIDEntry('pbeWithSHA1AndSEED-CBC',
      'Korean SEED algorithm, PBE key derivation', false),
  '1.2.410.200004.1.16': OIDEntry('pbeWithSHA1AndSEED-CFB',
      'Korean SEED algorithm, PBE key derivation', false),
  '1.2.410.200004.1.17': OIDEntry('pbeWithSHA1AndSEED-OFB',
      'Korean SEED algorithm, PBE key derivation', false),
  '1.2.410.200004.1.20':
      OIDEntry('rsaWithHAS160', 'Korean signature algorithm', false),
  '1.2.410.200004.1.21': OIDEntry('kcdsa1', 'Korean DSA', false),
  '1.2.410.200004.2':
      OIDEntry('npkiCP', 'KISA NPKI certificate policies', false),
  '1.2.410.200004.2.1':
      OIDEntry('npkiSignaturePolicy', 'KISA NPKI certificate policies', false),
  '1.2.410.200004.3': OIDEntry('npkiKP', 'KISA NPKI key usage', false),
  '1.2.410.200004.4': OIDEntry('npkiAT', 'KISA NPKI attribute', false),
  '1.2.410.200004.5': OIDEntry('npkiLCA', 'KISA NPKI licensed CA', false),
  '1.2.410.200004.5.1':
      OIDEntry('npkiSignKorea', 'KISA NPKI licensed CA', false),
  '1.2.410.200004.5.2':
      OIDEntry('npkiSignGate', 'KISA NPKI licensed CA', false),
  '1.2.410.200004.5.3': OIDEntry('npkiNcaSign', 'KISA NPKI licensed CA', false),
  '1.2.410.200004.6': OIDEntry('npkiON', 'KISA NPKI otherName', false),
  '1.2.410.200004.7': OIDEntry('npkiAPP', 'KISA NPKI application', false),
  '1.2.410.200004.7.1': OIDEntry('npkiSMIME', 'KISA NPKI application', false),
  '1.2.410.200004.7.1.1':
      OIDEntry('npkiSMIMEAlgo', 'KISA NPKI application', false),
  '1.2.410.200004.7.1.1.1':
      OIDEntry('npkiCmsSEEDWrap', 'KISA NPKI application', false),
  '1.2.410.200004.10': OIDEntry('npki', 'KISA NPKI', false),
  '1.2.410.200004.10.1':
      OIDEntry('npkiAttribute', 'KISA NPKI attribute', false),
  '1.2.410.200004.10.1.1':
      OIDEntry('npkiIdentifyData', 'KISA NPKI attribute', false),
  '1.2.410.200004.10.1.1.1': OIDEntry('npkiVID', 'KISA NPKI attribute', false),
  '1.2.410.200004.10.1.1.2':
      OIDEntry('npkiEncryptedVID', 'KISA NPKI attribute', false),
  '1.2.410.200004.10.1.1.3':
      OIDEntry('npkiRandomNum', 'KISA NPKI attribute', false),
  '1.2.410.200004.10.1.1.4': OIDEntry('npkiVID', 'KISA NPKI attribute', false),
  '1.2.410.200046.1.1':
      OIDEntry('aria1AlgorithmModes', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.1':
      OIDEntry('aria128-ecb', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.2':
      OIDEntry('aria128-cbc', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.3':
      OIDEntry('aria128-cfb', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.4':
      OIDEntry('aria128-ofb', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.5':
      OIDEntry('aria128-ctr', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.6':
      OIDEntry('aria192-ecb', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.7':
      OIDEntry('aria192-cbc', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.8':
      OIDEntry('aria192-cfb', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.9':
      OIDEntry('aria192-ofb', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.10':
      OIDEntry('aria192-ctr', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.11':
      OIDEntry('aria256-ecb', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.12':
      OIDEntry('aria256-cbc', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.13':
      OIDEntry('aria256-cfb', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.14':
      OIDEntry('aria256-ofb', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.15':
      OIDEntry('aria256-ctr', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.21':
      OIDEntry('aria128-cmac', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.22':
      OIDEntry('aria192-cmac', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.23':
      OIDEntry('aria256-cmac', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.31':
      OIDEntry('aria128-ocb2', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.32':
      OIDEntry('aria192-ocb2', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.33':
      OIDEntry('aria256-ocb2', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.34':
      OIDEntry('aria128-gcm', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.35':
      OIDEntry('aria192-gcm', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.36':
      OIDEntry('aria256-gcm', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.37':
      OIDEntry('aria128-ccm', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.38':
      OIDEntry('aria192-ccm', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.39':
      OIDEntry('aria256-ccm', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.40':
      OIDEntry('aria128-keywrap', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.41':
      OIDEntry('aria192-keywrap', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.42':
      OIDEntry('aria256-keywrap', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.43':
      OIDEntry('aria128-keywrapWithPad', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.44':
      OIDEntry('aria192-keywrapWithPad', 'ARIA algorithm modes', false),
  '1.2.410.200046.1.1.45':
      OIDEntry('aria256-keywrapWithPad', 'ARIA algorithm modes', false),
  '1.2.643.2.2.3': OIDEntry(
      'gostSignature', 'GOST R 34.10-2001 + GOST R 34.11-94 signature', false),
  '1.2.643.2.2.4': OIDEntry(
      'gost94Signature',
      'GOST R 34.10-94 + GOST R 34.11-94 signature. Obsoleted by GOST R 34.10-2001',
      true),
  '1.2.643.2.2.19':
      OIDEntry('gostPublicKey', 'GOST R 34.10-2001 (ECC) public key', false),
  '1.2.643.2.2.20': OIDEntry('gost94PublicKey',
      'GOST R 34.10-94 public key. Obsoleted by GOST R 34.10-2001', true),
  '1.2.643.2.2.21': OIDEntry(
      'gostCipher', 'GOST 28147-89 (symmetric key block cipher)', false),
  '1.2.643.2.2.31.0':
      OIDEntry('testCipherParams', 'Test params for GOST 28147-89', false),
  '1.2.643.2.2.31.1': OIDEntry(
      'cryptoProCipherA',
      'CryptoPro params A (default, variant \'Verba-O\') for GOST 28147-89',
      false),
  '1.2.643.2.2.31.2': OIDEntry('cryptoProCipherB',
      'CryptoPro params B (variant 1) for GOST 28147-89', false),
  '1.2.643.2.2.31.3': OIDEntry('cryptoProCipherC',
      'CryptoPro params C (variant 2) for GOST 28147-89', false),
  '1.2.643.2.2.31.4': OIDEntry('cryptoProCipherD',
      'CryptoPro params D (variant 3) for GOST 28147-89', false),
  '1.2.643.2.2.31.5':
      OIDEntry('oscar11Cipher', 'Oscar-1.1 params for GOST 28147-89', false),
  '1.2.643.2.2.31.6':
      OIDEntry('oscar10Cipher', 'Oscar-1.0 params for GOST 28147-89', false),
  '1.2.643.2.2.31.7':
      OIDEntry('ric1Cipher', 'RIC-1 params for GOST 28147-89', false),
  '1.2.643.2.2.31.12':
      OIDEntry('tc26CipherA', 'TC26 params 2 for GOST 28147-89', false),
  '1.2.643.2.2.31.13':
      OIDEntry('tc26CipherB', 'TC26 params 1 for GOST 28147-89', false),
  '1.2.643.2.2.31.14':
      OIDEntry('tc26CipherC', 'TC26 params 3 for GOST 28147-89', false),
  '1.2.643.2.2.31.15':
      OIDEntry('tc26CipherD', 'TC26 params 4 for GOST 28147-89', false),
  '1.2.643.2.2.31.16':
      OIDEntry('tc26CipherE', 'TC26 params 5 for GOST 28147-89', false),
  '1.2.643.2.2.31.17':
      OIDEntry('tc26CipherF', 'TC26 params 6 for GOST 28147-89', false),
  '1.2.643.7.1.2.5.1.1':
      OIDEntry('tc26CipherZ', 'TC26 params Z for GOST 28147-89', false),
  '1.2.643.2.2.9': OIDEntry('gostDigest', 'GOST R 34.11-94 digest', false),
  '1.2.643.2.2.30.0':
      OIDEntry('testDigestParams', 'Test params for GOST R 34.11-94', false),
  '1.2.643.2.2.30.1': OIDEntry(
      'cryptoProDigestA',
      'CryptoPro digest params A (default, variant \'Verba-O\') for GOST R 34.11-94',
      false),
  '1.2.643.2.2.30.2': OIDEntry('cryptoProDigestB',
      'CryptoPro digest params B (variant 1) for GOST R 34.11-94', false),
  '1.2.643.2.2.30.3': OIDEntry('cryptoProDigestC',
      'CryptoPro digest params C (variant 2) for GOST R 34.11-94', false),
  '1.2.643.2.2.30.4': OIDEntry('cryptoProDigestD',
      'CryptoPro digest params D (variant 3) for GOST R 34.11-94', false),
  '1.2.643.2.2.32.2': OIDEntry(
      'cryptoPro94SignA',
      'CryptoPro sign params A (default, variant \'Verba-O\') for GOST R 34.10-94',
      false),
  '1.2.643.2.2.32.3': OIDEntry('cryptoPro94SignB',
      'CryptoPro sign params B (variant 1) for GOST R 34.10-94', false),
  '1.2.643.2.2.32.4': OIDEntry('cryptoPro94SignC',
      'CryptoPro sign params C (variant 2) for GOST R 34.10-94', false),
  '1.2.643.2.2.32.5': OIDEntry('cryptoPro94SignD',
      'CryptoPro sign params D (variant 3) for GOST R 34.10-94', false),
  '1.2.643.2.2.33.1': OIDEntry('cryptoPro94SignXA',
      'CryptoPro sign params XA (variant 1) for GOST R 34.10-94', false),
  '1.2.643.2.2.33.2': OIDEntry('cryptoPro94SignXB',
      'CryptoPro sign params XB (variant 2) for GOST R 34.10-94', false),
  '1.2.643.2.2.33.3': OIDEntry('cryptoPro94SignXC',
      'CryptoPro sign params XC (variant 3) for GOST R 34.10-94', false),
  '1.2.643.2.2.35.0': OIDEntry(
      'testSignParams', 'Test elliptic curve for GOST R 34.10-2001', false),
  '1.2.643.2.2.35.1': OIDEntry(
      'cryptoProSignA', 'CryptoPro ell.curve A for GOST R 34.10-2001', false),
  '1.2.643.2.2.35.2': OIDEntry(
      'cryptoProSignB', 'CryptoPro ell.curve B for GOST R 34.10-2001', false),
  '1.2.643.2.2.35.3': OIDEntry(
      'cryptoProSignC', 'CryptoPro ell.curve C for GOST R 34.10-2001', false),
  '1.2.643.2.2.36.0': OIDEntry(
      'cryptoProSignXA', 'CryptoPro ell.curve XA for GOST R 34.10-2001', false),
  '1.2.643.2.2.36.1': OIDEntry(
      'cryptoProSignXB', 'CryptoPro ell.curve XB for GOST R 34.10-2001', false),
  '1.2.643.7.1.2.1.1.1': OIDEntry('cryptoPro2012Sign256A',
      'CryptoPro ell.curve A for GOST R 34.10-2012 256 bit', false),
  '1.2.643.7.1.2.1.2.1': OIDEntry('cryptoPro2012Sign512A',
      'CryptoPro ell.curve A (default) for GOST R 34.10-2012 512 bit', false),
  '1.2.643.7.1.2.1.2.2': OIDEntry('cryptoPro2012Sign512B',
      'CryptoPro ell.curve B for GOST R 34.10-2012 512 bit', false),
  '1.2.643.7.1.2.1.2.3': OIDEntry('cryptoPro2012Sign512C',
      'CryptoPro ell.curve C for GOST R 34.10-2012 512 bit', false),
  '1.2.643.2.2.14.0': OIDEntry(
      'nullMeshing', 'Do not mesh state of GOST 28147-89 cipher', false),
  '1.2.643.2.2.14.1': OIDEntry('cryptoProMeshing',
      'CryptoPro meshing of state of GOST 28147-89 cipher', false),
  '1.2.643.2.2.10': OIDEntry('hmacGost', 'HMAC with GOST R 34.11-94', false),
  '1.2.643.2.2.13.0':
      OIDEntry('gostWrap', 'Wrap key using GOST 28147-89 key', false),
  '1.2.643.2.2.13.1': OIDEntry(
      'cryptoProWrap', 'Wrap key using diversified GOST 28147-89 key', false),
  '1.2.643.2.2.96': OIDEntry('cryptoProECDHWrap',
      'Wrap key using ECC DH on GOST R 34.10-2001 keys (VKO)', false),
  '1.2.643.7.1.1.1.1': OIDEntry(
      'gost2012PublicKey256', 'GOST R 34.10-2012 256 bit public key', false),
  '1.2.643.7.1.1.1.2': OIDEntry(
      'gost2012PublicKey512', 'GOST R 34.10-2012 512 bit public key', false),
  '1.2.643.7.1.1.2.2':
      OIDEntry('gost2012Digest256', 'GOST R 34.11-2012 256 bit digest', false),
  '1.2.643.7.1.1.2.3':
      OIDEntry('gost2012Digest512', 'GOST R 34.11-2012 512 bit digest', false),
  '1.2.643.7.1.1.3.2': OIDEntry(
      'gost2012Signature256', 'GOST R 34.10-2012 256 bit signature', false),
  '1.2.643.7.1.1.3.3': OIDEntry(
      'gost2012Signature512', 'GOST R 34.10-2012 512 bit signature', false),
  '1.2.643.7.1.1.6.1': OIDEntry('cryptoProECDH256',
      'CryptoPro ECC DH algorithm for GOST R 34.10-2012 256 bit key', false),
  '1.2.643.7.1.1.6.2': OIDEntry('cryptoProECDH512',
      'CryptoPro ECC DH algorithm for GOST R 34.10-2012 512 bit key', false),
  '1.2.752.34.1': OIDEntry('seis-cp', 'SEIS Project', false),
  '1.2.752.34.1.1': OIDEntry('SEIS high-assurance policyIdentifier',
      'SEIS Project certificate policies', false),
  '1.2.752.34.1.2': OIDEntry(
      'SEIS GAK policyIdentifier', 'SEIS Project certificate policies', false),
  '1.2.752.34.2': OIDEntry('SEIS pe', 'SEIS Project', false),
  '1.2.752.34.3': OIDEntry('SEIS at', 'SEIS Project', false),
  '1.2.752.34.3.1':
      OIDEntry('SEIS at-personalIdentifier', 'SEIS Project attribute', false),
  '1.2.840.10040.1': OIDEntry('module', 'ANSI X9.57', false),
  '1.2.840.10040.1.1': OIDEntry('x9f1-cert-mgmt', 'ANSI X9.57 module', false),
  '1.2.840.10040.2': OIDEntry('holdinstruction', 'ANSI X9.57', false),
  '1.2.840.10040.2.1':
      OIDEntry('holdinstruction-none', 'ANSI X9.57 hold instruction', false),
  '1.2.840.10040.2.2':
      OIDEntry('callissuer', 'ANSI X9.57 hold instruction', false),
  '1.2.840.10040.2.3': OIDEntry('reject', 'ANSI X9.57 hold instruction', false),
  '1.2.840.10040.2.4':
      OIDEntry('pickupToken', 'ANSI X9.57 hold instruction', false),
  '1.2.840.10040.3': OIDEntry('attribute', 'ANSI X9.57', false),
  '1.2.840.10040.3.1':
      OIDEntry('countersignature', 'ANSI X9.57 attribute', false),
  '1.2.840.10040.3.2':
      OIDEntry('attribute-cert', 'ANSI X9.57 attribute', false),
  '1.2.840.10040.4': OIDEntry('algorithm', 'ANSI X9.57', false),
  '1.2.840.10040.4.1': OIDEntry('dsa', 'ANSI X9.57 algorithm', false),
  '1.2.840.10040.4.2': OIDEntry('dsa-match', 'ANSI X9.57 algorithm', false),
  '1.2.840.10040.4.3': OIDEntry('dsaWithSha1', 'ANSI X9.57 algorithm', false),
  '1.2.840.10045.1': OIDEntry('fieldType',
      'ANSI X9.62. This OID is also assigned as ecdsa-with-SHA1', false),
  '1.2.840.10045.1.1': OIDEntry('prime-field', 'ANSI X9.62 field type', false),
  '1.2.840.10045.1.2':
      OIDEntry('characteristic-two-field', 'ANSI X9.62 field type', false),
  '1.2.840.10045.1.2.3':
      OIDEntry('characteristic-two-basis', 'ANSI X9.62 field type', false),
  '1.2.840.10045.1.2.3.1': OIDEntry('onBasis', 'ANSI X9.62 field basis', false),
  '1.2.840.10045.1.2.3.2': OIDEntry('tpBasis', 'ANSI X9.62 field basis', false),
  '1.2.840.10045.1.2.3.3': OIDEntry('ppBasis', 'ANSI X9.62 field basis', false),
  '1.2.840.10045.2': OIDEntry('publicKeyType', 'ANSI X9.62', false),
  '1.2.840.10045.2.1':
      OIDEntry('ecPublicKey', 'ANSI X9.62 public key type', false),
  '1.2.840.10045.3.0.1':
      OIDEntry('c2pnb163v1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.2':
      OIDEntry('c2pnb163v2', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.3':
      OIDEntry('c2pnb163v3', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.5':
      OIDEntry('c2tnb191v1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.6':
      OIDEntry('c2tnb191v2', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.7':
      OIDEntry('c2tnb191v3', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.10':
      OIDEntry('c2pnb208w1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.11':
      OIDEntry('c2tnb239v1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.12':
      OIDEntry('c2tnb239v2', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.13':
      OIDEntry('c2tnb239v3', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.16':
      OIDEntry('c2pnb272w1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.18':
      OIDEntry('c2tnb359v1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.19':
      OIDEntry('c2pnb368w1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.0.20':
      OIDEntry('c2tnb431r1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.1.1':
      OIDEntry('prime192v1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.1.2':
      OIDEntry('prime192v2', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.1.3':
      OIDEntry('prime192v3', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.1.4':
      OIDEntry('prime239v1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.1.5':
      OIDEntry('prime239v2', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.1.6':
      OIDEntry('prime239v3', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.3.1.7':
      OIDEntry('prime256v1', 'ANSI X9.62 named elliptic curve', false),
  '1.2.840.10045.4.1':
      OIDEntry('ecdsaWithSHA1', 'ANSI X9.62 ECDSA algorithm with SHA1', false),
  '1.2.840.10045.4.2': OIDEntry('ecdsaWithRecommended',
      'ANSI X9.62 ECDSA algorithm with Recommended', false),
  '1.2.840.10045.4.3': OIDEntry(
      'ecdsaWithSpecified', 'ANSI X9.62 ECDSA algorithm with Specified', false),
  '1.2.840.10045.4.3.1': OIDEntry(
      'ecdsaWithSHA224', 'ANSI X9.62 ECDSA algorithm with SHA224', false),
  '1.2.840.10045.4.3.2': OIDEntry(
      'ecdsaWithSHA256', 'ANSI X9.62 ECDSA algorithm with SHA256', false),
  '1.2.840.10045.4.3.3': OIDEntry(
      'ecdsaWithSHA384', 'ANSI X9.62 ECDSA algorithm with SHA384', false),
  '1.2.840.10045.4.3.4': OIDEntry(
      'ecdsaWithSHA512', 'ANSI X9.62 ECDSA algorithm with SHA512', false),
  '1.2.840.10046.1': OIDEntry('fieldType', 'ANSI X9.42', false),
  '1.2.840.10046.1.1': OIDEntry('gf-prime', 'ANSI X9.42 field type', false),
  '1.2.840.10046.2': OIDEntry('numberType', 'ANSI X9.42', false),
  '1.2.840.10046.2.1': OIDEntry('dhPublicKey', 'ANSI X9.42 number type', false),
  '1.2.840.10046.3': OIDEntry('scheme', 'ANSI X9.42', false),
  '1.2.840.10046.3.1': OIDEntry('dhStatic', 'ANSI X9.42 scheme', false),
  '1.2.840.10046.3.2': OIDEntry('dhEphem', 'ANSI X9.42 scheme', false),
  '1.2.840.10046.3.3': OIDEntry('dhHybrid1', 'ANSI X9.42 scheme', false),
  '1.2.840.10046.3.4': OIDEntry('dhHybrid2', 'ANSI X9.42 scheme', false),
  '1.2.840.10046.3.5': OIDEntry('mqv2', 'ANSI X9.42 scheme', false),
  '1.2.840.10046.3.6': OIDEntry('mqv1', 'ANSI X9.42 scheme', false),
  '1.2.840.10065.2.2': OIDEntry('?', 'ASTM 31.20', false),
  '1.2.840.10065.2.3': OIDEntry('healthcareLicense', 'ASTM 31.20', false),
  '1.2.840.10065.2.3.1.1':
      OIDEntry('license?', 'ASTM 31.20 healthcare license type', false),
  '1.2.840.10070': OIDEntry('iec62351', 'IEC 62351', false),
  '1.2.840.10070.8': OIDEntry('iec62351_8', 'IEC 62351-8', false),
  '1.2.840.10070.8.1': OIDEntry('iecUserRoles', 'IEC 62351-8', false),
  '1.2.840.113533.7': OIDEntry('nsn', 'null', false),
  '1.2.840.113533.7.65': OIDEntry('nsn-ce', 'null', false),
  '1.2.840.113533.7.65.0':
      OIDEntry('entrustVersInfo', 'Nortel Secure Networks ce', false),
  '1.2.840.113533.7.66': OIDEntry('nsn-alg', 'null', false),
  '1.2.840.113533.7.66.3':
      OIDEntry('cast3CBC', 'Nortel Secure Networks alg', false),
  '1.2.840.113533.7.66.10':
      OIDEntry('cast5CBC', 'Nortel Secure Networks alg', false),
  '1.2.840.113533.7.66.11':
      OIDEntry('cast5MAC', 'Nortel Secure Networks alg', false),
  '1.2.840.113533.7.66.12':
      OIDEntry('pbeWithMD5AndCAST5-CBC', 'Nortel Secure Networks alg', false),
  '1.2.840.113533.7.66.13':
      OIDEntry('passwordBasedMac', 'Nortel Secure Networks alg', false),
  '1.2.840.113533.7.67': OIDEntry('nsn-oc', 'null', false),
  '1.2.840.113533.7.67.0':
      OIDEntry('entrustUser', 'Nortel Secure Networks oc', false),
  '1.2.840.113533.7.68': OIDEntry('nsn-at', 'null', false),
  '1.2.840.113533.7.68.0':
      OIDEntry('entrustCAInfo', 'Nortel Secure Networks at', false),
  '1.2.840.113533.7.68.10':
      OIDEntry('attributeCertificate', 'Nortel Secure Networks at', false),
  '1.2.840.113549.1.1': OIDEntry('pkcs-1', 'null', false),
  '1.2.840.113549.1.1.1': OIDEntry('rsaEncryption', 'PKCS #1', false),
  '1.2.840.113549.1.1.2': OIDEntry('md2WithRSAEncryption', 'PKCS #1', false),
  '1.2.840.113549.1.1.3': OIDEntry('md4WithRSAEncryption', 'PKCS #1', false),
  '1.2.840.113549.1.1.4': OIDEntry('md5WithRSAEncryption', 'PKCS #1', false),
  '1.2.840.113549.1.1.5': OIDEntry('sha1WithRSAEncryption', 'PKCS #1', false),
  '1.2.840.113549.1.1.7': OIDEntry('rsaOAEP', 'PKCS #1', false),
  '1.2.840.113549.1.1.8': OIDEntry('pkcs1-MGF', 'PKCS #1', false),
  '1.2.840.113549.1.1.9': OIDEntry('rsaOAEP-pSpecified', 'PKCS #1', false),
  '1.2.840.113549.1.1.10': OIDEntry('rsaPSS', 'PKCS #1', false),
  '1.2.840.113549.1.1.11':
      OIDEntry('sha256WithRSAEncryption', 'PKCS #1', false),
  '1.2.840.113549.1.1.12':
      OIDEntry('sha384WithRSAEncryption', 'PKCS #1', false),
  '1.2.840.113549.1.1.13':
      OIDEntry('sha512WithRSAEncryption', 'PKCS #1', false),
  '1.2.840.113549.1.1.14':
      OIDEntry('sha224WithRSAEncryption', 'PKCS #1', false),
  '1.2.840.113549.1.1.6': OIDEntry(
      'rsaOAEPEncryptionSET',
      'PKCS #1. This OID may also be assigned as ripemd160WithRSAEncryption',
      false),
  '1.2.840.113549.1.2': OIDEntry('bsafeRsaEncr', 'Obsolete BSAFE OID', true),
  '1.2.840.113549.1.3': OIDEntry('pkcs-3', 'null', false),
  '1.2.840.113549.1.3.1': OIDEntry('dhKeyAgreement', 'PKCS #3', false),
  '1.2.840.113549.1.5': OIDEntry('pkcs-5', 'null', false),
  '1.2.840.113549.1.5.1': OIDEntry('pbeWithMD2AndDES-CBC', 'PKCS #5', false),
  '1.2.840.113549.1.5.3': OIDEntry('pbeWithMD5AndDES-CBC', 'PKCS #5', false),
  '1.2.840.113549.1.5.4': OIDEntry('pbeWithMD2AndRC2-CBC', 'PKCS #5', false),
  '1.2.840.113549.1.5.6': OIDEntry('pbeWithMD5AndRC2-CBC', 'PKCS #5', false),
  '1.2.840.113549.1.5.9':
      OIDEntry('pbeWithMD5AndXOR', 'PKCS #5, used in BSAFE only', true),
  '1.2.840.113549.1.5.10': OIDEntry('pbeWithSHAAndDES-CBC', 'PKCS #5', false),
  '1.2.840.113549.1.5.12': OIDEntry('pkcs5PBKDF2', 'PKCS #5 v2.0', false),
  '1.2.840.113549.1.5.13': OIDEntry('pkcs5PBES2', 'PKCS #5 v2.0', false),
  '1.2.840.113549.1.5.14': OIDEntry('pkcs5PBMAC1', 'PKCS #5 v2.0', false),
  '1.2.840.113549.1.7': OIDEntry('pkcs-7', 'null', false),
  '1.2.840.113549.1.7.1': OIDEntry('data', 'PKCS #7', false),
  '1.2.840.113549.1.7.2': OIDEntry('signedData', 'PKCS #7', false),
  '1.2.840.113549.1.7.3': OIDEntry('envelopedData', 'PKCS #7', false),
  '1.2.840.113549.1.7.4': OIDEntry('signedAndEnvelopedData', 'PKCS #7', false),
  '1.2.840.113549.1.7.5': OIDEntry('digestedData', 'PKCS #7', false),
  '1.2.840.113549.1.7.6': OIDEntry('encryptedData', 'PKCS #7', false),
  '1.2.840.113549.1.7.7':
      OIDEntry('dataWithAttributes', 'PKCS #7 experimental', true),
  '1.2.840.113549.1.7.8':
      OIDEntry('encryptedPrivateKeyInfo', 'PKCS #7 experimental', true),
  '1.2.840.113549.1.9': OIDEntry('pkcs-9', 'null', false),
  '1.2.840.113549.1.9.1': OIDEntry('emailAddress',
      'PKCS #9. Deprecated, use an altName extension instead', false),
  '1.2.840.113549.1.9.2': OIDEntry('unstructuredName', 'PKCS #9', false),
  '1.2.840.113549.1.9.3': OIDEntry('contentType', 'PKCS #9', false),
  '1.2.840.113549.1.9.4': OIDEntry('messageDigest', 'PKCS #9', false),
  '1.2.840.113549.1.9.5': OIDEntry('signingTime', 'PKCS #9', false),
  '1.2.840.113549.1.9.6': OIDEntry('countersignature', 'PKCS #9', false),
  '1.2.840.113549.1.9.7': OIDEntry('challengePassword', 'PKCS #9', false),
  '1.2.840.113549.1.9.8': OIDEntry('unstructuredAddress', 'PKCS #9', false),
  '1.2.840.113549.1.9.9':
      OIDEntry('extendedCertificateAttributes', 'PKCS #9', false),
  '1.2.840.113549.1.9.10':
      OIDEntry('issuerAndSerialNumber', 'PKCS #9 experimental', true),
  '1.2.840.113549.1.9.11':
      OIDEntry('passwordCheck', 'PKCS #9 experimental', true),
  '1.2.840.113549.1.9.12': OIDEntry('publicKey', 'PKCS #9 experimental', true),
  '1.2.840.113549.1.9.13': OIDEntry('signingDescription', 'PKCS #9', false),
  '1.2.840.113549.1.9.14':
      OIDEntry('extensionRequest', 'PKCS #9 via CRMF', false),
  '1.2.840.113549.1.9.15': OIDEntry(
      'sMIMECapabilities',
      'PKCS #9. This OID was formerly assigned as symmetricCapabilities, then reassigned as SMIMECapabilities, then renamed to the current name',
      false),
  '1.2.840.113549.1.9.15.1':
      OIDEntry('preferSignedData', 'sMIMECapabilities', false),
  '1.2.840.113549.1.9.15.2':
      OIDEntry('canNotDecryptAny', 'sMIMECapabilities', false),
  '1.2.840.113549.1.9.15.3': OIDEntry(
      'receiptRequest',
      'sMIMECapabilities. Deprecated, use (1 2 840 113549 1 9 16 2 1) instead',
      true),
  '1.2.840.113549.1.9.15.4': OIDEntry(
      'receipt',
      'sMIMECapabilities. Deprecated, use (1 2 840 113549 1 9 16 1 1) instead',
      true),
  '1.2.840.113549.1.9.15.5': OIDEntry(
      'contentHints',
      'sMIMECapabilities. Deprecated, use (1 2 840 113549 1 9 16 2 4) instead',
      true),
  '1.2.840.113549.1.9.15.6': OIDEntry(
      'mlExpansionHistory',
      'sMIMECapabilities. Deprecated, use (1 2 840 113549 1 9 16 2 3) instead',
      true),
  '1.2.840.113549.1.9.16': OIDEntry('id-sMIME', 'PKCS #9', false),
  '1.2.840.113549.1.9.16.0': OIDEntry('id-mod', 'id-sMIME', false),
  '1.2.840.113549.1.9.16.0.1': OIDEntry('id-mod-cms', 'S/MIME Modules', false),
  '1.2.840.113549.1.9.16.0.2': OIDEntry('id-mod-ess', 'S/MIME Modules', false),
  '1.2.840.113549.1.9.16.0.3': OIDEntry('id-mod-oid', 'S/MIME Modules', false),
  '1.2.840.113549.1.9.16.0.4':
      OIDEntry('id-mod-msg-v3', 'S/MIME Modules', false),
  '1.2.840.113549.1.9.16.0.5':
      OIDEntry('id-mod-ets-eSignature-88', 'S/MIME Modules', false),
  '1.2.840.113549.1.9.16.0.6':
      OIDEntry('id-mod-ets-eSignature-97', 'S/MIME Modules', false),
  '1.2.840.113549.1.9.16.0.7':
      OIDEntry('id-mod-ets-eSigPolicy-88', 'S/MIME Modules', false),
  '1.2.840.113549.1.9.16.0.8':
      OIDEntry('id-mod-ets-eSigPolicy-88', 'S/MIME Modules', false),
  '1.2.840.113549.1.9.16.1': OIDEntry('contentType', 'S/MIME', false),
  '1.2.840.113549.1.9.16.1.1':
      OIDEntry('receipt', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.2':
      OIDEntry('authData', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.3':
      OIDEntry('publishCert', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.4':
      OIDEntry('tSTInfo', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.5':
      OIDEntry('tDTInfo', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.6':
      OIDEntry('contentInfo', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.7':
      OIDEntry('dVCSRequestData', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.8':
      OIDEntry('dVCSResponseData', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.9':
      OIDEntry('compressedData', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.10':
      OIDEntry('scvpCertValRequest', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.11':
      OIDEntry('scvpCertValResponse', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.12':
      OIDEntry('scvpValPolRequest', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.13':
      OIDEntry('scvpValPolResponse', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.14':
      OIDEntry('attrCertEncAttrs', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.15':
      OIDEntry('tSReq', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.16':
      OIDEntry('firmwarePackage', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.17':
      OIDEntry('firmwareLoadReceipt', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.18':
      OIDEntry('firmwareLoadError', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.19':
      OIDEntry('contentCollection', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.20':
      OIDEntry('contentWithAttrs', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.21':
      OIDEntry('encKeyWithID', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.22':
      OIDEntry('encPEPSI', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.23':
      OIDEntry('authEnvelopedData', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.24':
      OIDEntry('routeOriginAttest', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.25':
      OIDEntry('symmetricKeyPackage', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.26':
      OIDEntry('rpkiManifest', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.27':
      OIDEntry('asciiTextWithCRLF', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.28': OIDEntry('xml', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.29': OIDEntry('pdf', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.30':
      OIDEntry('postscript', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.31':
      OIDEntry('timestampedData', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.32':
      OIDEntry('asAdjacencyAttest', 'S/MIME Content Types', true),
  '1.2.840.113549.1.9.16.1.33':
      OIDEntry('rpkiTrustAnchor', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.1.34':
      OIDEntry('trustAnchorList', 'S/MIME Content Types', false),
  '1.2.840.113549.1.9.16.2':
      OIDEntry('authenticatedAttributes', 'S/MIME', false),
  '1.2.840.113549.1.9.16.2.1':
      OIDEntry('receiptRequest', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.2':
      OIDEntry('securityLabel', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.3':
      OIDEntry('mlExpandHistory', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.4':
      OIDEntry('contentHint', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.5':
      OIDEntry('msgSigDigest', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.6': OIDEntry(
      'encapContentType', 'S/MIME Authenticated Attributes.  Obsolete', true),
  '1.2.840.113549.1.9.16.2.7':
      OIDEntry('contentIdentifier', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.8':
      OIDEntry('macValue', 'S/MIME Authenticated Attributes.  Obsolete', true),
  '1.2.840.113549.1.9.16.2.9':
      OIDEntry('equivalentLabels', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.10':
      OIDEntry('contentReference', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.11':
      OIDEntry('encrypKeyPref', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.12':
      OIDEntry('signingCertificate', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.13':
      OIDEntry('smimeEncryptCerts', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.14':
      OIDEntry('timeStampToken', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.15':
      OIDEntry('sigPolicyId', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.16':
      OIDEntry('commitmentType', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.17':
      OIDEntry('signerLocation', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.18':
      OIDEntry('signerAttr', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.19':
      OIDEntry('otherSigCert', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.20':
      OIDEntry('contentTimestamp', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.21':
      OIDEntry('certificateRefs', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.22':
      OIDEntry('revocationRefs', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.23':
      OIDEntry('certValues', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.24':
      OIDEntry('revocationValues', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.25':
      OIDEntry('escTimeStamp', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.26':
      OIDEntry('certCRLTimestamp', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.27':
      OIDEntry('archiveTimeStamp', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.28':
      OIDEntry('signatureType', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.29':
      OIDEntry('dvcsDvc', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.30':
      OIDEntry('cekReference', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.31':
      OIDEntry('maxCEKDecrypts', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.32':
      OIDEntry('kekDerivationAlg', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.33': OIDEntry(
      'intendedRecipients', 'S/MIME Authenticated Attributes.  Obsolete', true),
  '1.2.840.113549.1.9.16.2.34':
      OIDEntry('cmcUnsignedData', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.35':
      OIDEntry('fwPackageID', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.36':
      OIDEntry('fwTargetHardwareIDs', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.37':
      OIDEntry('fwDecryptKeyID', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.38':
      OIDEntry('fwImplCryptAlgs', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.39': OIDEntry(
      'fwWrappedFirmwareKey', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.40': OIDEntry(
      'fwCommunityIdentifiers', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.41':
      OIDEntry('fwPkgMessageDigest', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.42':
      OIDEntry('fwPackageInfo', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.43':
      OIDEntry('fwImplCompressAlgs', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.44': OIDEntry(
      'etsAttrCertificateRefs', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.45': OIDEntry(
      'etsAttrRevocationRefs', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.46':
      OIDEntry('binarySigningTime', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.47': OIDEntry(
      'signingCertificateV2', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.48': OIDEntry(
      'etsArchiveTimeStampV2', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.49':
      OIDEntry('erInternal', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.50':
      OIDEntry('erExternal', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.2.51':
      OIDEntry('multipleSignatures', 'S/MIME Authenticated Attributes', false),
  '1.2.840.113549.1.9.16.3.1':
      OIDEntry('esDHwith3DES', 'S/MIME Algorithms. Obsolete', true),
  '1.2.840.113549.1.9.16.3.2':
      OIDEntry('esDHwithRC2', 'S/MIME Algorithms. Obsolete', true),
  '1.2.840.113549.1.9.16.3.3':
      OIDEntry('3desWrap', 'S/MIME Algorithms. Obsolete', true),
  '1.2.840.113549.1.9.16.3.4':
      OIDEntry('rc2Wrap', 'S/MIME Algorithms. Obsolete', true),
  '1.2.840.113549.1.9.16.3.5': OIDEntry('esDH', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.6':
      OIDEntry('cms3DESwrap', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.7':
      OIDEntry('cmsRC2wrap', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.8': OIDEntry('zlib', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.9': OIDEntry('pwriKEK', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.10': OIDEntry('ssDH', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.11':
      OIDEntry('hmacWith3DESwrap', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.12':
      OIDEntry('hmacWithAESwrap', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.13':
      OIDEntry('md5XorExperiment', 'S/MIME Algorithms.  Experimental', true),
  '1.2.840.113549.1.9.16.3.14': OIDEntry('rsaKEM', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.15':
      OIDEntry('authEnc128', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.16':
      OIDEntry('authEnc256', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.17':
      OIDEntry('hssLmsHashSig', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.18':
      OIDEntry('chaCha20Poly1305', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.19':
      OIDEntry('ecdhHKDF-SHA256', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.20':
      OIDEntry('ecdhHKDF-SHA384', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.21':
      OIDEntry('ecdhHKDF-SHA512', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.22':
      OIDEntry('aesSIV-CMAC-256', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.23':
      OIDEntry('aesSIV-CMAC-384', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.24':
      OIDEntry('aesSIV-CMAC-512', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.25':
      OIDEntry('aesSIV-CMAC-wrap256', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.26':
      OIDEntry('aesSIV-CMAC-wrap384', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.27':
      OIDEntry('aesSIV-CMAC-wrap512', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.28':
      OIDEntry('hkdfWithSha256', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.29':
      OIDEntry('hkdfWithSha384', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.3.30':
      OIDEntry('hkdfWithSha512', 'S/MIME Algorithms', false),
  '1.2.840.113549.1.9.16.4.1':
      OIDEntry('certDist-ldap', 'S/MIME Certificate Distribution', false),
  '1.2.840.113549.1.9.16.5.1': OIDEntry('sigPolicyQualifier-spuri x',
      'S/MIME Signature Policy Qualifiers', false),
  '1.2.840.113549.1.9.16.5.2': OIDEntry('sigPolicyQualifier-spUserNotice',
      'S/MIME Signature Policy Qualifiers', false),
  '1.2.840.113549.1.9.16.6.1':
      OIDEntry('proofOfOrigin', 'S/MIME Commitment Type Identifiers', false),
  '1.2.840.113549.1.9.16.6.2':
      OIDEntry('proofOfReceipt', 'S/MIME Commitment Type Identifiers', false),
  '1.2.840.113549.1.9.16.6.3':
      OIDEntry('proofOfDelivery', 'S/MIME Commitment Type Identifiers', false),
  '1.2.840.113549.1.9.16.6.4':
      OIDEntry('proofOfSender', 'S/MIME Commitment Type Identifiers', false),
  '1.2.840.113549.1.9.16.6.5':
      OIDEntry('proofOfApproval', 'S/MIME Commitment Type Identifiers', false),
  '1.2.840.113549.1.9.16.6.6':
      OIDEntry('proofOfCreation', 'S/MIME Commitment Type Identifiers', false),
  '1.2.840.113549.1.9.16.8.1': OIDEntry(
      'glUseKEK', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.2': OIDEntry(
      'glDelete', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.3': OIDEntry(
      'glAddMember', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.4': OIDEntry(
      'glDeleteMember', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.5': OIDEntry(
      'glRekey', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.6': OIDEntry(
      'glAddOwner', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.7': OIDEntry(
      'glRemoveOwner', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.8': OIDEntry(
      'glkCompromise', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.9': OIDEntry(
      'glkRefresh', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.10': OIDEntry('glFailInfo',
      'S/MIME Symmetric Key Distribution Attributes.  Obsolete', true),
  '1.2.840.113549.1.9.16.8.11': OIDEntry(
      'glaQueryRequest', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.12': OIDEntry('glaQueryResponse',
      'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.13': OIDEntry(
      'glProvideCert', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.14': OIDEntry(
      'glUpdateCert', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.8.15':
      OIDEntry('glKey', 'S/MIME Symmetric Key Distribution Attributes', false),
  '1.2.840.113549.1.9.16.9':
      OIDEntry('signatureTypeIdentifier', 'S/MIME', false),
  '1.2.840.113549.1.9.16.9.1':
      OIDEntry('originatorSig', 'S/MIME Signature Type Identifier', false),
  '1.2.840.113549.1.9.16.9.2':
      OIDEntry('domainSig', 'S/MIME Signature Type Identifier', false),
  '1.2.840.113549.1.9.16.9.3': OIDEntry(
      'additionalAttributesSig', 'S/MIME Signature Type Identifier', false),
  '1.2.840.113549.1.9.16.9.4':
      OIDEntry('reviewSig', 'S/MIME Signature Type Identifier', false),
  '1.2.840.113549.1.9.16.11': OIDEntry('capabilities', 'S/MIME', false),
  '1.2.840.113549.1.9.16.11.1':
      OIDEntry('preferBinaryInside', 'S/MIME Capability', false),
  '1.2.840.113549.1.9.16.12': OIDEntry('pskcAttributes',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.1': OIDEntry('pskcManufacturer',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.2': OIDEntry('pskcSerialNo',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.3': OIDEntry(
      'pskcModel', 'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.4': OIDEntry('pskcIssueno',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.5': OIDEntry('pskcDevicebinding',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.6': OIDEntry('pskcDevicestartdate',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.7': OIDEntry('pskcDeviceexpirydate',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.8': OIDEntry('pskcModuleid',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.9': OIDEntry(
      'pskcKeyid', 'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.10': OIDEntry('pskcAlgorithm',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.11': OIDEntry('pskcIssuer',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.12': OIDEntry('pskcKeyprofileid',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.13': OIDEntry('pskcKeyreference',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.14': OIDEntry('pskcFriendlyname',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.15': OIDEntry('pskcAlgorithmparams',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.16': OIDEntry('pskcCounter',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.17': OIDEntry(
      'pskcTime', 'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.18': OIDEntry('pskcTimeinterval',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.19': OIDEntry('pskcTimedrift',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.20': OIDEntry('pskcValuemac',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.21': OIDEntry('pskcKeystartdate',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.22': OIDEntry('pskcKeyexpirydate',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.23': OIDEntry('pskcNooftransactions',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.24': OIDEntry('pskcKeyusages',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.25': OIDEntry('pskcPinpolicy',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.26': OIDEntry('pskcDeviceuserid',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.16.12.27': OIDEntry('pskcKeyuserid',
      'S/MIME Portable Symmetric Key Container Attributes', false),
  '1.2.840.113549.1.9.20':
      OIDEntry('friendlyName (for PKCS #12)', 'PKCS #9 via PKCS #12', false),
  '1.2.840.113549.1.9.21':
      OIDEntry('localKeyID (for PKCS #12)', 'PKCS #9 via PKCS #12', false),
  '1.2.840.113549.1.9.22':
      OIDEntry('certTypes (for PKCS #12)', 'PKCS #9 via PKCS #12', false),
  '1.2.840.113549.1.9.22.1':
      OIDEntry('x509Certificate (for PKCS #12)', 'PKCS #9 via PKCS #12', false),
  '1.2.840.113549.1.9.22.2':
      OIDEntry('sdsiCertificate (for PKCS #12)', 'PKCS #9 via PKCS #12', false),
  '1.2.840.113549.1.9.23':
      OIDEntry('crlTypes (for PKCS #12)', 'PKCS #9 via PKCS #12', false),
  '1.2.840.113549.1.9.23.1':
      OIDEntry('x509Crl (for PKCS #12)', 'PKCS #9 via PKCS #12', false),
  '1.2.840.113549.1.9.24':
      OIDEntry('pkcs9objectClass', 'PKCS #9/RFC 2985', false),
  '1.2.840.113549.1.9.25':
      OIDEntry('pkcs9attributes', 'PKCS #9/RFC 2985', false),
  '1.2.840.113549.1.9.25.1':
      OIDEntry('pkcs15Token', 'PKCS #9/RFC 2985 attribute', false),
  '1.2.840.113549.1.9.25.2':
      OIDEntry('encryptedPrivateKeyInfo', 'PKCS #9/RFC 2985 attribute', false),
  '1.2.840.113549.1.9.25.3':
      OIDEntry('randomNonce', 'PKCS #9/RFC 2985 attribute', false),
  '1.2.840.113549.1.9.25.4':
      OIDEntry('sequenceNumber', 'PKCS #9/RFC 2985 attribute', false),
  '1.2.840.113549.1.9.25.5':
      OIDEntry('pkcs7PDU', 'PKCS #9/RFC 2985 attribute', false),
  '1.2.840.113549.1.9.26': OIDEntry('pkcs9syntax', 'PKCS #9/RFC 2985', false),
  '1.2.840.113549.1.9.27':
      OIDEntry('pkcs9matchingRules', 'PKCS #9/RFC 2985', false),
  '1.2.840.113549.1.9.52':
      OIDEntry('cmsAlgorithmProtection', 'RFC 6211', false),
  '1.2.840.113549.1.12': OIDEntry('pkcs-12', 'null', false),
  '1.2.840.113549.1.12.1': OIDEntry('pkcs-12-PbeIds',
      'This OID was formerly assigned as PKCS #12 modeID', false),
  '1.2.840.113549.1.12.1.1': OIDEntry(
      'pbeWithSHAAnd128BitRC4',
      'PKCS #12 PbeIds. This OID was formerly assigned as pkcs-12-OfflineTransportMode',
      false),
  '1.2.840.113549.1.12.1.2': OIDEntry(
      'pbeWithSHAAnd40BitRC4',
      'PKCS #12 PbeIds. This OID was formerly assigned as pkcs-12-OnlineTransportMode',
      false),
  '1.2.840.113549.1.12.1.3':
      OIDEntry('pbeWithSHAAnd3-KeyTripleDES-CBC', 'PKCS #12 PbeIds', false),
  '1.2.840.113549.1.12.1.4':
      OIDEntry('pbeWithSHAAnd2-KeyTripleDES-CBC', 'PKCS #12 PbeIds', false),
  '1.2.840.113549.1.12.1.5':
      OIDEntry('pbeWithSHAAnd128BitRC2-CBC', 'PKCS #12 PbeIds', false),
  '1.2.840.113549.1.12.1.6':
      OIDEntry('pbeWithSHAAnd40BitRC2-CBC', 'PKCS #12 PbeIds', false),
  '1.2.840.113549.1.12.2': OIDEntry('pkcs-12-ESPVKID', 'Deprecated', true),
  '1.2.840.113549.1.12.2.1': OIDEntry(
      'pkcs-12-PKCS8KeyShrouding',
      'PKCS #12 ESPVKID. Deprecated, use (1 2 840 113549 1 12 3 5) instead',
      true),
  '1.2.840.113549.1.12.3': OIDEntry('pkcs-12-BagIds', 'null', false),
  '1.2.840.113549.1.12.3.1':
      OIDEntry('pkcs-12-keyBagId', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.3.2':
      OIDEntry('pkcs-12-certAndCRLBagId', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.3.3':
      OIDEntry('pkcs-12-secretBagId', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.3.4':
      OIDEntry('pkcs-12-safeContentsId', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.3.5':
      OIDEntry('pkcs-12-pkcs-8ShroudedKeyBagId', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.4': OIDEntry('pkcs-12-CertBagID', 'Deprecated', true),
  '1.2.840.113549.1.12.4.1': OIDEntry(
      'pkcs-12-X509CertCRLBagID',
      'PKCS #12 CertBagID. This OID was formerly assigned as pkcs-12-X509CertCRLBag',
      false),
  '1.2.840.113549.1.12.4.2': OIDEntry(
      'pkcs-12-SDSICertBagID',
      'PKCS #12 CertBagID. This OID was formerly assigned as pkcs-12-SDSICertBag',
      false),
  '1.2.840.113549.1.12.5': OIDEntry('pkcs-12-OID', 'null', true),
  '1.2.840.113549.1.12.5.1': OIDEntry(
      'pkcs-12-PBEID',
      'PKCS #12 OID. Deprecated, use the partially compatible (1 2 840 113549 1 12 1) OIDs instead',
      true),
  '1.2.840.113549.1.12.5.1.1': OIDEntry(
      'pkcs-12-PBEWithSha1And128BitRC4',
      'PKCS #12 OID PBEID. Deprecated, use (1 2 840 113549 1 12 1 1) instead',
      true),
  '1.2.840.113549.1.12.5.1.2': OIDEntry(
      'pkcs-12-PBEWithSha1And40BitRC4',
      'PKCS #12 OID PBEID. Deprecated, use (1 2 840 113549 1 12 1 2) instead',
      true),
  '1.2.840.113549.1.12.5.1.3': OIDEntry(
      'pkcs-12-PBEWithSha1AndTripleDESCBC',
      'PKCS #12 OID PBEID. Deprecated, use the incompatible but similar (1 2 840 113549 1 12 1 3) or (1 2 840 113549 1 12 1 4) instead',
      true),
  '1.2.840.113549.1.12.5.1.4': OIDEntry(
      'pkcs-12-PBEWithSha1And128BitRC2CBC',
      'PKCS #12 OID PBEID. Deprecated, use (1 2 840 113549 1 12 1 5) instead',
      true),
  '1.2.840.113549.1.12.5.1.5': OIDEntry(
      'pkcs-12-PBEWithSha1And40BitRC2CBC',
      'PKCS #12 OID PBEID. Deprecated, use (1 2 840 113549 1 12 1 6) instead',
      true),
  '1.2.840.113549.1.12.5.1.6': OIDEntry(
      'pkcs-12-PBEWithSha1AndRC4',
      'PKCS #12 OID PBEID. Deprecated, use the incompatible but similar (1 2 840 113549 1 12 1 1) or (1 2 840 113549 1 12 1 2) instead',
      true),
  '1.2.840.113549.1.12.5.1.7': OIDEntry(
      'pkcs-12-PBEWithSha1AndRC2CBC',
      'PKCS #12 OID PBEID. Deprecated, use the incompatible but similar (1 2 840 113549 1 12 1 5) or (1 2 840 113549 1 12 1 6) instead',
      true),
  '1.2.840.113549.1.12.5.2': OIDEntry(
      'pkcs-12-EnvelopingID',
      'PKCS #12 OID. Deprecated, use the conventional PKCS #1 OIDs instead',
      false),
  '1.2.840.113549.1.12.5.2.1': OIDEntry(
      'pkcs-12-RSAEncryptionWith128BitRC4',
      'PKCS #12 OID EnvelopingID. Deprecated, use the conventional PKCS #1 OIDs instead',
      true),
  '1.2.840.113549.1.12.5.2.2': OIDEntry(
      'pkcs-12-RSAEncryptionWith40BitRC4',
      'PKCS #12 OID EnvelopingID. Deprecated, use the conventional PKCS #1 OIDs instead',
      true),
  '1.2.840.113549.1.12.5.2.3': OIDEntry(
      'pkcs-12-RSAEncryptionWithTripleDES',
      'PKCS #12 OID EnvelopingID. Deprecated, use the conventional PKCS #1 OIDs instead',
      true),
  '1.2.840.113549.1.12.5.3': OIDEntry(
      'pkcs-12-SignatureID',
      'PKCS #12 OID EnvelopingID. Deprecated, use the conventional PKCS #1 OIDs instead',
      true),
  '1.2.840.113549.1.12.5.3.1': OIDEntry(
      'pkcs-12-RSASignatureWithSHA1Digest',
      'PKCS #12 OID SignatureID. Deprecated, use the conventional PKCS #1 OIDs instead',
      true),
  '1.2.840.113549.1.12.10': OIDEntry('pkcs-12Version1', 'null', false),
  '1.2.840.113549.1.12.10.1': OIDEntry('pkcs-12BadIds', 'null', false),
  '1.2.840.113549.1.12.10.1.1':
      OIDEntry('pkcs-12-keyBag', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.10.1.2':
      OIDEntry('pkcs-12-pkcs-8ShroudedKeyBag', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.10.1.3':
      OIDEntry('pkcs-12-certBag', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.10.1.4':
      OIDEntry('pkcs-12-crlBag', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.10.1.5':
      OIDEntry('pkcs-12-secretBag', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.12.10.1.6':
      OIDEntry('pkcs-12-safeContentsBag', 'PKCS #12 BagIds', false),
  '1.2.840.113549.1.15.1': OIDEntry('pkcs15modules', 'PKCS #15', false),
  '1.2.840.113549.1.15.2': OIDEntry('pkcs15attributes', 'PKCS #15', false),
  '1.2.840.113549.1.15.3': OIDEntry('pkcs15contentType', 'PKCS #15', false),
  '1.2.840.113549.1.15.3.1':
      OIDEntry('pkcs15content', 'PKCS #15 content type', false),
  '1.2.840.113549.2': OIDEntry('digestAlgorithm', 'null', false),
  '1.2.840.113549.2.2': OIDEntry('md2', 'RSADSI digestAlgorithm', false),
  '1.2.840.113549.2.4': OIDEntry('md4', 'RSADSI digestAlgorithm', false),
  '1.2.840.113549.2.5': OIDEntry('md5', 'RSADSI digestAlgorithm', false),
  '1.2.840.113549.2.7':
      OIDEntry('hmacWithSHA1', 'RSADSI digestAlgorithm', false),
  '1.2.840.113549.2.8':
      OIDEntry('hmacWithSHA224', 'RSADSI digestAlgorithm', false),
  '1.2.840.113549.2.9':
      OIDEntry('hmacWithSHA256', 'RSADSI digestAlgorithm', false),
  '1.2.840.113549.2.10':
      OIDEntry('hmacWithSHA384', 'RSADSI digestAlgorithm', false),
  '1.2.840.113549.2.11':
      OIDEntry('hmacWithSHA512', 'RSADSI digestAlgorithm', false),
  '1.2.840.113549.3': OIDEntry('encryptionAlgorithm', 'null', false),
  '1.2.840.113549.3.2': OIDEntry('rc2CBC', 'RSADSI encryptionAlgorithm', false),
  '1.2.840.113549.3.3': OIDEntry('rc2ECB', 'RSADSI encryptionAlgorithm', false),
  '1.2.840.113549.3.4': OIDEntry('rc4', 'RSADSI encryptionAlgorithm', false),
  '1.2.840.113549.3.5':
      OIDEntry('rc4WithMAC', 'RSADSI encryptionAlgorithm', false),
  '1.2.840.113549.3.6':
      OIDEntry('desx-CBC', 'RSADSI encryptionAlgorithm', false),
  '1.2.840.113549.3.7':
      OIDEntry('des-EDE3-CBC', 'RSADSI encryptionAlgorithm', false),
  '1.2.840.113549.3.8': OIDEntry('rc5CBC', 'RSADSI encryptionAlgorithm', false),
  '1.2.840.113549.3.9':
      OIDEntry('rc5-CBCPad', 'RSADSI encryptionAlgorithm', false),
  '1.2.840.113549.3.10': OIDEntry('desCDMF',
      'RSADSI encryptionAlgorithm. Formerly called CDMFCBCPad', false),
  '1.2.840.114021.1.6.1':
      OIDEntry('Identrus unknown policyIdentifier', 'Identrus', false),
  '1.2.840.114021.4.1': OIDEntry('identrusOCSP', 'Identrus', false),
  '1.2.840.113556.1.2.241': OIDEntry(
      'deliveryMechanism', 'Microsoft Exchange Server - attribute', false),
  '1.2.840.113556.1.2.281': OIDEntry(
      'ntSecurityDescriptor', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.3.0': OIDEntry(
      'site-Addressing', 'Microsoft Exchange Server - object class', false),
  '1.2.840.113556.1.3.13': OIDEntry(
      'classSchema', 'Microsoft Exchange Server - object class', false),
  '1.2.840.113556.1.3.14': OIDEntry(
      'attributeSchema', 'Microsoft Exchange Server - object class', false),
  '1.2.840.113556.1.3.17': OIDEntry(
      'mailbox-Agent', 'Microsoft Exchange Server - object class', false),
  '1.2.840.113556.1.3.22':
      OIDEntry('mailbox', 'Microsoft Exchange Server - object class', false),
  '1.2.840.113556.1.3.23':
      OIDEntry('container', 'Microsoft Exchange Server - object class', false),
  '1.2.840.113556.1.3.46': OIDEntry(
      'mailRecipient', 'Microsoft Exchange Server - object class', false),
  '1.2.840.113556.1.4.145':
      OIDEntry('revision', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1327': OIDEntry(
      'pKIDefaultKeySpec', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1328':
      OIDEntry('pKIKeyUsage', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1329': OIDEntry(
      'pKIMaxIssuingDepth', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1330': OIDEntry(
      'pKICriticalExtensions', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1331': OIDEntry(
      'pKIExpirationPeriod', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1332': OIDEntry(
      'pKIOverlapPeriod', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1333': OIDEntry(
      'pKIExtendedKeyUsage', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1334':
      OIDEntry('pKIDefaultCSPs', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1335': OIDEntry(
      'pKIEnrollmentAccess', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1429': OIDEntry(
      'msPKI-RA-Signature', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1430': OIDEntry(
      'msPKI-Enrollment-Flag', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1431': OIDEntry(
      'msPKI-Private-Key-Flag', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1432': OIDEntry('msPKI-Certificate-Name-Flag',
      'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1433': OIDEntry(
      'msPKI-Minimal-Key-Size', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1434': OIDEntry('msPKI-Template-Schema-Version',
      'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1435': OIDEntry('msPKI-Template-Minor-Revision',
      'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1436': OIDEntry(
      'msPKI-Cert-Template-OID', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1437': OIDEntry('msPKI-Supersede-Templates',
      'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1438': OIDEntry(
      'msPKI-RA-Policies', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1439': OIDEntry(
      'msPKI-Certificate-Policy', 'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1674': OIDEntry('msPKI-Certificate-Application-Policy',
      'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.1.4.1675': OIDEntry('msPKI-RA-Application-Policies',
      'Microsoft Cert Template - attribute', false),
  '1.2.840.113556.4.3': OIDEntry('microsoftExcel', 'Microsoft', false),
  '1.2.840.113556.4.4': OIDEntry('titledWithOID', 'Microsoft', false),
  '1.2.840.113556.4.5': OIDEntry('microsoftPowerPoint', 'Microsoft', false),
  '1.2.840.113583.1': OIDEntry('adobeAcrobat', 'Adobe Acrobat', false),
  '1.2.840.113583.1.1':
      OIDEntry('acrobatSecurity', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.1':
      OIDEntry('pdfPassword', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.2':
      OIDEntry('pdfDefaultSigningCredential', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.3': OIDEntry(
      'pdfDefaultEncryptionCredential', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.4':
      OIDEntry('pdfPasswordTimeout', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.5':
      OIDEntry('pdfAuthenticDocumentsTrust', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.6':
      OIDEntry('pdfDynamicContentTrust', 'Adobe Acrobat security', true),
  '1.2.840.113583.1.1.7':
      OIDEntry('pdfUbiquityTrust', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.8':
      OIDEntry('pdfRevocationInfoArchival', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.9':
      OIDEntry('pdfX509Extension', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.9.1':
      OIDEntry('pdfTimeStamp', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.9.2':
      OIDEntry('pdfArchiveRevInfo', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.1.10':
      OIDEntry('pdfPPLKLiteCredential', 'Adobe Acrobat security', false),
  '1.2.840.113583.1.2': OIDEntry('acrobatCPS', 'Adobe Acrobat CPS', false),
  '1.2.840.113583.1.2.1':
      OIDEntry('pdfAuthenticDocumentsCPS', 'Adobe Acrobat CPS', false),
  '1.2.840.113583.1.2.2': OIDEntry('pdfTestCPS', 'Adobe Acrobat CPS', false),
  '1.2.840.113583.1.2.3':
      OIDEntry('pdfUbiquityCPS', 'Adobe Acrobat CPS', false),
  '1.2.840.113583.1.2.4': OIDEntry('pdfAdhocCPS', 'Adobe Acrobat CPS', false),
  '1.2.840.113583.1.7':
      OIDEntry('acrobatUbiquity', 'Adobe Acrobat ubiquity', false),
  '1.2.840.113583.1.7.1':
      OIDEntry('pdfUbiquitySubRights', 'Adobe Acrobat ubiquity', false),
  '1.2.840.113583.1.9':
      OIDEntry('acrobatExtension', 'Adobe Acrobat X.509 extension', false),
  '1.2.840.113628.114.1.7': OIDEntry('adobePKCS7', 'Adobe', false),
  '1.2.840.113635.100': OIDEntry('appleDataSecurity', 'Apple', false),
  '1.2.840.113635.100.1': OIDEntry('appleTrustPolicy', 'Apple', false),
  '1.2.840.113635.100.1.1':
      OIDEntry('appleISignTP', 'Apple trust policy', false),
  '1.2.840.113635.100.1.2':
      OIDEntry('appleX509Basic', 'Apple trust policy', false),
  '1.2.840.113635.100.1.3':
      OIDEntry('appleSSLPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.4':
      OIDEntry('appleLocalCertGenPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.5':
      OIDEntry('appleCSRGenPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.6':
      OIDEntry('appleCRLPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.7':
      OIDEntry('appleOCSPPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.8':
      OIDEntry('appleSMIMEPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.9':
      OIDEntry('appleEAPPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.10':
      OIDEntry('appleSWUpdateSigningPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.11':
      OIDEntry('appleIPSecPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.12':
      OIDEntry('appleIChatPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.13':
      OIDEntry('appleResourceSignPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.14':
      OIDEntry('applePKINITClientPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.15':
      OIDEntry('applePKINITServerPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.16':
      OIDEntry('appleCodeSigningPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.1.17':
      OIDEntry('applePackageSigningPolicy', 'Apple trust policy', false),
  '1.2.840.113635.100.2': OIDEntry('appleSecurityAlgorithm', 'Apple', false),
  '1.2.840.113635.100.2.1':
      OIDEntry('appleFEE', 'Apple security algorithm', false),
  '1.2.840.113635.100.2.2':
      OIDEntry('appleASC', 'Apple security algorithm', false),
  '1.2.840.113635.100.2.3':
      OIDEntry('appleFEE_MD5', 'Apple security algorithm', false),
  '1.2.840.113635.100.2.4':
      OIDEntry('appleFEE_SHA1', 'Apple security algorithm', false),
  '1.2.840.113635.100.2.5':
      OIDEntry('appleFEED', 'Apple security algorithm', false),
  '1.2.840.113635.100.2.6':
      OIDEntry('appleFEEDEXP', 'Apple security algorithm', false),
  '1.2.840.113635.100.2.7':
      OIDEntry('appleECDSA', 'Apple security algorithm', false),
  '1.2.840.113635.100.3': OIDEntry('appleDotMacCertificate', 'Apple', false),
  '1.2.840.113635.100.3.1': OIDEntry(
      'appleDotMacCertificateRequest', 'Apple dotMac certificate', false),
  '1.2.840.113635.100.3.2': OIDEntry(
      'appleDotMacCertificateExtension', 'Apple dotMac certificate', false),
  '1.2.840.113635.100.3.3': OIDEntry(
      'appleDotMacCertificateRequestValues', 'Apple dotMac certificate', false),
  '1.2.840.113635.100.4': OIDEntry('appleExtendedKeyUsage', 'Apple', false),
  '1.2.840.113635.100.4.1':
      OIDEntry('appleCodeSigning', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.1.1': OIDEntry(
      'appleCodeSigningDevelopment', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.1.2':
      OIDEntry('appleSoftwareUpdateSigning', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.1.3':
      OIDEntry('appleCodeSigningThirdParty', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.1.4':
      OIDEntry('appleResourceSigning', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.2':
      OIDEntry('appleIChatSigning', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.3':
      OIDEntry('appleIChatEncryption', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.4':
      OIDEntry('appleSystemIdentity', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.5':
      OIDEntry('appleCryptoEnv', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.5.1':
      OIDEntry('appleCryptoProductionEnv', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.5.2':
      OIDEntry('appleCryptoMaintenanceEnv', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.5.3':
      OIDEntry('appleCryptoTestEnv', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.5.4':
      OIDEntry('appleCryptoDevelopmentEnv', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.6':
      OIDEntry('appleCryptoQoS', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.6.1':
      OIDEntry('appleCryptoTier0QoS', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.6.2':
      OIDEntry('appleCryptoTier1QoS', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.6.3':
      OIDEntry('appleCryptoTier2QoS', 'Apple extended key usage', false),
  '1.2.840.113635.100.4.6.4':
      OIDEntry('appleCryptoTier3QoS', 'Apple extended key usage', false),
  '1.2.840.113635.100.5': OIDEntry('appleCertificatePolicies', 'Apple', false),
  '1.2.840.113635.100.5.1':
      OIDEntry('appleCertificatePolicyID', 'Apple', false),
  '1.2.840.113635.100.5.2':
      OIDEntry('appleDotMacCertificatePolicyID', 'Apple', false),
  '1.2.840.113635.100.5.3':
      OIDEntry('appleADCCertificatePolicyID', 'Apple', false),
  '1.2.840.113635.100.6':
      OIDEntry('appleCertificateExtensions', 'Apple', false),
  '1.2.840.113635.100.6.1': OIDEntry('appleCertificateExtensionCodeSigning',
      'Apple certificate extension', false),
  '1.2.840.113635.100.6.1.1': OIDEntry('appleCertificateExtensionAppleSigning',
      'Apple certificate extension', false),
  '1.2.840.113635.100.6.1.2': OIDEntry(
      'appleCertificateExtensionADCDeveloperSigning',
      'Apple certificate extension',
      false),
  '1.2.840.113635.100.6.1.3': OIDEntry(
      'appleCertificateExtensionADCAppleSigning',
      'Apple certificate extension',
      false),
  '1.3.6.1.4.1.311.2.1.4':
      OIDEntry('spcIndirectDataContext', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.1.10': OIDEntry('spcAgencyInfo',
      'Microsoft code signing. Also known as policyLink', false),
  '1.3.6.1.4.1.311.2.1.11':
      OIDEntry('spcStatementType', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.1.12':
      OIDEntry('spcSpOpusInfo', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.1.14': OIDEntry('certReqExtensions', 'Microsoft', false),
  '1.3.6.1.4.1.311.2.1.15':
      OIDEntry('spcPEImageData', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.1.18':
      OIDEntry('spcRawFileData', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.1.19':
      OIDEntry('spcStructuredStorageData', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.1.20': OIDEntry(
      'spcJavaClassData (type 1)',
      'Microsoft code signing. Formerly "link extension" aka "glue extension"',
      false),
  '1.3.6.1.4.1.311.2.1.21':
      OIDEntry('individualCodeSigning', 'Microsoft', false),
  '1.3.6.1.4.1.311.2.1.22':
      OIDEntry('commercialCodeSigning', 'Microsoft', false),
  '1.3.6.1.4.1.311.2.1.25': OIDEntry('spcLink (type 2)',
      'Microsoft code signing. Also known as "glue extension"', false),
  '1.3.6.1.4.1.311.2.1.26':
      OIDEntry('spcMinimalCriteriaInfo', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.1.27':
      OIDEntry('spcFinancialCriteriaInfo', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.1.28': OIDEntry('spcLink (type 3)',
      'Microsoft code signing.  Also known as "glue extension"', false),
  '1.3.6.1.4.1.311.2.1.29':
      OIDEntry('spcHashInfoObjID', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.1.30':
      OIDEntry('spcSipInfoObjID', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.2.2': OIDEntry('ctl', 'Microsoft CTL', false),
  '1.3.6.1.4.1.311.2.2.1':
      OIDEntry('ctlTrustedCodesigningCAList', 'Microsoft CTL', false),
  '1.3.6.1.4.1.311.2.2.2':
      OIDEntry('ctlTrustedClientAuthCAList', 'Microsoft CTL', false),
  '1.3.6.1.4.1.311.2.2.3':
      OIDEntry('ctlTrustedServerAuthCAList', 'Microsoft CTL', false),
  '1.3.6.1.4.1.311.3.2.1':
      OIDEntry('timestampRequest', 'Microsoft code signing', false),
  '1.3.6.1.4.1.311.10.1':
      OIDEntry('certTrustList', 'Microsoft contentType', false),
  '1.3.6.1.4.1.311.10.1.1':
      OIDEntry('sortedCtl', 'Microsoft contentType', false),
  '1.3.6.1.4.1.311.10.2': OIDEntry('nextUpdateLocation', 'Microsoft', false),
  '1.3.6.1.4.1.311.10.3.1':
      OIDEntry('certTrustListSigning', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.2':
      OIDEntry('timeStampSigning', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.3':
      OIDEntry('serverGatedCrypto', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.3.1': OIDEntry('serialized', 'Microsoft', false),
  '1.3.6.1.4.1.311.10.3.4':
      OIDEntry('encryptedFileSystem', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.5':
      OIDEntry('whqlCrypto', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.6':
      OIDEntry('nt5Crypto', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.7':
      OIDEntry('oemWHQLCrypto', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.8':
      OIDEntry('embeddedNTCrypto', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.9':
      OIDEntry('rootListSigner', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.10':
      OIDEntry('qualifiedSubordination', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.11':
      OIDEntry('keyRecovery', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.12':
      OIDEntry('documentSigning', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.13':
      OIDEntry('lifetimeSigning', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.14':
      OIDEntry('mobileDeviceSoftware', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.15':
      OIDEntry('smartDisplay', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.16':
      OIDEntry('cspSignature', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.3.4.1':
      OIDEntry('efsRecovery', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.4.1':
      OIDEntry('yesnoTrustAttr', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.10.5.1':
      OIDEntry('drm', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.5.2':
      OIDEntry('drmIndividualization', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.6.1':
      OIDEntry('licenses', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.6.2':
      OIDEntry('licenseServer', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.10.7.1': OIDEntry('keyidRdn', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.10.8.1':
      OIDEntry('removeCertificate', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.10.9.1':
      OIDEntry('crossCertDistPoints', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.10.10.1': OIDEntry('cmcAddAttributes', 'Microsoft', false),
  '1.3.6.1.4.1.311.10.11': OIDEntry('certPropIdPrefix', 'Microsoft', false),
  '1.3.6.1.4.1.311.10.11.4': OIDEntry('certMd5HashPropId', 'Microsoft', false),
  '1.3.6.1.4.1.311.10.11.20':
      OIDEntry('certKeyIdentifierPropId', 'Microsoft', false),
  '1.3.6.1.4.1.311.10.11.28':
      OIDEntry('certIssuerSerialNumberMd5HashPropId', 'Microsoft', false),
  '1.3.6.1.4.1.311.10.11.29':
      OIDEntry('certSubjectNameMd5HashPropId', 'Microsoft', false),
  '1.3.6.1.4.1.311.10.12.1':
      OIDEntry('anyApplicationPolicy', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.12': OIDEntry('catalog', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.12.1.1':
      OIDEntry('catalogList', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.12.1.2':
      OIDEntry('catalogListMember', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.12.2.1':
      OIDEntry('catalogNameValueObjID', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.12.2.2':
      OIDEntry('catalogMemberInfoObjID', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.13.1':
      OIDEntry('renewalCertificate', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.13.2.1':
      OIDEntry('enrolmentNameValuePair', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.13.2.2':
      OIDEntry('enrolmentCSP', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.13.2.3': OIDEntry('osVersion', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.16.4':
      OIDEntry('microsoftRecipientInfo', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.17.1':
      OIDEntry('pkcs12KeyProviderNameAttr', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.17.2':
      OIDEntry('localMachineKeyset', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.17.3':
      OIDEntry('pkcs12ExtendedAttributes', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.20.1': OIDEntry('autoEnrollCtlUsage', 'Microsoft', false),
  '1.3.6.1.4.1.311.20.2': OIDEntry('enrollCerttypeExtension',
      'Microsoft CAPICOM certificate template, V1', false),
  '1.3.6.1.4.1.311.20.2.1':
      OIDEntry('enrollmentAgent', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.20.2.2':
      OIDEntry('smartcardLogon', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.20.2.3':
      OIDEntry('universalPrincipalName', 'Microsoft UPN', false),
  '1.3.6.1.4.1.311.20.3': OIDEntry('certManifold', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.1': OIDEntry('cAKeyCertIndexPair',
      'Microsoft attribute.  Also known as certsrvCaVersion', false),
  '1.3.6.1.4.1.311.21.2':
      OIDEntry('certSrvPreviousCertHash', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.3': OIDEntry('crlVirtualBase', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.4': OIDEntry('crlNextPublish', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.5':
      OIDEntry('caExchange', 'Microsoft extended key usage', true),
  '1.3.6.1.4.1.311.21.6':
      OIDEntry('keyRecovery', 'Microsoft extended key usage', true),
  '1.3.6.1.4.1.311.21.7': OIDEntry('certificateTemplate',
      'Microsoft CAPICOM certificate template, V2', false),
  '1.3.6.1.4.1.311.21.9': OIDEntry('rdnDummySigner', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.10':
      OIDEntry('applicationCertPolicies', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.11':
      OIDEntry('applicationPolicyMappings', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.12':
      OIDEntry('applicationPolicyConstraints', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.13':
      OIDEntry('archivedKey', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.21.14': OIDEntry('crlSelfCDP', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.15':
      OIDEntry('requireCertChainPolicy', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.16': OIDEntry('archivedKeyCertHash', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.17': OIDEntry('issuedCertHash', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.19': OIDEntry('dsEmailReplication', 'Microsoft', false),
  '1.3.6.1.4.1.311.21.20':
      OIDEntry('requestClientInfo', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.21.21':
      OIDEntry('encryptedKeyHash', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.21.22':
      OIDEntry('certsrvCrossCaVersion', 'Microsoft', false),
  '1.3.6.1.4.1.311.25.1': OIDEntry('ntdsReplication', 'Microsoft', false),
  '1.3.6.1.4.1.311.31.1':
      OIDEntry('productUpdate', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.47.1.1':
      OIDEntry('systemHealth', 'Microsoft extended key usage', false),
  '1.3.6.1.4.1.311.47.1.3':
      OIDEntry('systemHealthLoophole', 'Microsoft extended key usage', false),
  '1.3.6.1.4.1.311.60.1.1':
      OIDEntry('rootProgramFlags', 'Microsoft policy attribute', false),
  '1.3.6.1.4.1.311.61.1.1':
      OIDEntry('kernelModeCodeSigning', 'Microsoft enhanced key usage', false),
  '1.3.6.1.4.1.311.60.2.1.1':
      OIDEntry('jurisdictionOfIncorporationL', 'Microsoft (???)', false),
  '1.3.6.1.4.1.311.60.2.1.2':
      OIDEntry('jurisdictionOfIncorporationSP', 'Microsoft (???)', false),
  '1.3.6.1.4.1.311.60.2.1.3':
      OIDEntry('jurisdictionOfIncorporationC', 'Microsoft (???)', false),
  '1.3.6.1.4.1.311.88': OIDEntry('capiCom', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.88.1':
      OIDEntry('capiComVersion', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.88.2':
      OIDEntry('capiComAttribute', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.88.2.1':
      OIDEntry('capiComDocumentName', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.88.2.2':
      OIDEntry('capiComDocumentDescription', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.88.3':
      OIDEntry('capiComEncryptedData', 'Microsoft attribute', false),
  '1.3.6.1.4.1.311.88.3.1':
      OIDEntry('capiComEncryptedContent', 'Microsoft attribute', false),
  '1.3.6.1.4.1.188.7.1.1': OIDEntry('ascom', 'Ascom Systech', false),
  '1.3.6.1.4.1.188.7.1.1.1': OIDEntry('ideaECB', 'Ascom Systech', false),
  '1.3.6.1.4.1.188.7.1.1.2': OIDEntry('ideaCBC', 'Ascom Systech', false),
  '1.3.6.1.4.1.188.7.1.1.3': OIDEntry('ideaCFB', 'Ascom Systech', false),
  '1.3.6.1.4.1.188.7.1.1.4': OIDEntry('ideaOFB', 'Ascom Systech', false),
  '1.3.6.1.4.1.2428.10.1.1':
      OIDEntry('UNINETT policyIdentifier', 'UNINETT PCA', false),
  '1.3.6.1.4.1.2712.10':
      OIDEntry('ICE-TEL policyIdentifier', 'ICE-TEL CA', false),
  '1.3.6.1.4.1.2786.1.1.1':
      OIDEntry('ICE-TEL Italian policyIdentifier', 'ICE-TEL CA policy', false),
  '1.3.6.1.4.1.3029.1.1.1':
      OIDEntry('blowfishECB', 'cryptlib encryption algorithm', false),
  '1.3.6.1.4.1.3029.1.1.2':
      OIDEntry('blowfishCBC', 'cryptlib encryption algorithm', false),
  '1.3.6.1.4.1.3029.1.1.3':
      OIDEntry('blowfishCFB', 'cryptlib encryption algorithm', false),
  '1.3.6.1.4.1.3029.1.1.4':
      OIDEntry('blowfishOFB', 'cryptlib encryption algorithm', false),
  '1.3.6.1.4.1.3029.1.2.1':
      OIDEntry('elgamal', 'cryptlib public-key algorithm', false),
  '1.3.6.1.4.1.3029.1.2.1.1':
      OIDEntry('elgamalWithSHA-1', 'cryptlib public-key algorithm', false),
  '1.3.6.1.4.1.3029.1.2.1.2':
      OIDEntry('elgamalWithRIPEMD-160', 'cryptlib public-key algorithm', false),
  '1.3.6.1.4.1.3029.3.1.1':
      OIDEntry('cryptlibPresenceCheck', 'cryptlib attribute type', false),
  '1.3.6.1.4.1.3029.3.1.2':
      OIDEntry('pkiBoot', 'cryptlib attribute type', false),
  '1.3.6.1.4.1.3029.3.1.4':
      OIDEntry('crlExtReason', 'cryptlib attribute type', false),
  '1.3.6.1.4.1.3029.3.1.5':
      OIDEntry('keyFeatures', 'cryptlib attribute type', false),
  '1.3.6.1.4.1.3029.4.1': OIDEntry('cryptlibContent', 'cryptlib', false),
  '1.3.6.1.4.1.3029.4.1.1':
      OIDEntry('cryptlibConfigData', 'cryptlib content type', false),
  '1.3.6.1.4.1.3029.4.1.2':
      OIDEntry('cryptlibUserIndex', 'cryptlib content type', false),
  '1.3.6.1.4.1.3029.4.1.3':
      OIDEntry('cryptlibUserInfo', 'cryptlib content type', false),
  '1.3.6.1.4.1.3029.4.1.4':
      OIDEntry('rtcsRequest', 'cryptlib content type', false),
  '1.3.6.1.4.1.3029.4.1.5':
      OIDEntry('rtcsResponse', 'cryptlib content type', false),
  '1.3.6.1.4.1.3029.4.1.6':
      OIDEntry('rtcsResponseExt', 'cryptlib content type', false),
  '1.3.6.1.4.1.3029.42.11172.1':
      OIDEntry('mpeg-1', 'cryptlib special MPEG-of-cat OID', false),
  '1.3.6.1.4.1.3029.54.11940.54': OIDEntry(
      'TSA policy "Anything that arrives, we sign"',
      'cryptlib TSA policy',
      false),
  '1.3.6.1.4.1.3029.88.89.90.90.89':
      OIDEntry('xYZZY policyIdentifier', 'cryptlib certificate policy', false),
  '1.3.6.1.4.1.3401.8.1.1':
      OIDEntry('pgpExtension', 'PGP key information', false),
  '1.3.6.1.4.1.3576.7':
      OIDEntry('eciaAscX12Edi', 'TMN EDI for Interactive Agents', false),
  '1.3.6.1.4.1.3576.7.1':
      OIDEntry('plainEDImessage', 'TMN EDI for Interactive Agents', false),
  '1.3.6.1.4.1.3576.7.2':
      OIDEntry('signedEDImessage', 'TMN EDI for Interactive Agents', false),
  '1.3.6.1.4.1.3576.7.5':
      OIDEntry('integrityEDImessage', 'TMN EDI for Interactive Agents', false),
  '1.3.6.1.4.1.3576.7.65':
      OIDEntry('iaReceiptMessage', 'TMN EDI for Interactive Agents', false),
  '1.3.6.1.4.1.3576.7.97':
      OIDEntry('iaStatusMessage', 'TMN EDI for Interactive Agents', false),
  '1.3.6.1.4.1.3576.8':
      OIDEntry('eciaEdifact', 'TMN EDI for Interactive Agents', false),
  '1.3.6.1.4.1.3576.9':
      OIDEntry('eciaNonEdi', 'TMN EDI for Interactive Agents', false),
  '1.3.6.1.4.1.4146': OIDEntry('Globalsign', 'Globalsign', false),
  '1.3.6.1.4.1.4146.1': OIDEntry('globalsignPolicy', 'Globalsign', false),
  '1.3.6.1.4.1.4146.1.10':
      OIDEntry('globalsignDVPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.20':
      OIDEntry('globalsignOVPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.30':
      OIDEntry('globalsignTSAPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.40':
      OIDEntry('globalsignClientCertPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.50':
      OIDEntry('globalsignCodeSignPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.60':
      OIDEntry('globalsignRootSignPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.70':
      OIDEntry('globalsignTrustedRootPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.80':
      OIDEntry('globalsignEDIClientPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.81':
      OIDEntry('globalsignEDIServerPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.90':
      OIDEntry('globalsignTPMRootPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.4146.1.95':
      OIDEntry('globalsignOCSPPolicy', 'Globalsign policy', false),
  '1.3.6.1.4.1.5309.1': OIDEntry('edelWebPolicy', 'EdelWeb policy', false),
  '1.3.6.1.4.1.5309.1.2':
      OIDEntry('edelWebCustomerPolicy', 'EdelWeb policy', false),
  '1.3.6.1.4.1.5309.1.2.1':
      OIDEntry('edelWebClepsydrePolicy', 'EdelWeb policy', false),
  '1.3.6.1.4.1.5309.1.2.2':
      OIDEntry('edelWebExperimentalTSAPolicy', 'EdelWeb policy', false),
  '1.3.6.1.4.1.5309.1.2.3':
      OIDEntry('edelWebOpenEvidenceTSAPolicy', 'EdelWeb policy', false),
  '1.3.6.1.4.1.5472': OIDEntry('timeproof', 'enterprise', false),
  '1.3.6.1.4.1.5472.1': OIDEntry('tss', 'timeproof', false),
  '1.3.6.1.4.1.5472.1.1': OIDEntry('tss80', 'timeproof TSS', false),
  '1.3.6.1.4.1.5472.1.2': OIDEntry('tss380', 'timeproof TSS', false),
  '1.3.6.1.4.1.5472.1.3': OIDEntry('tss400', 'timeproof TSS', false),
  '1.3.6.1.4.1.5770.0.3': OIDEntry('secondaryPractices', 'MEDePass', false),
  '1.3.6.1.4.1.5770.0.4': OIDEntry('physicianIdentifiers', 'MEDePass', false),
  '1.3.6.1.4.1.6449.1.2.1.3.1': OIDEntry('comodoPolicy', 'Comodo CA', false),
  '1.3.6.1.4.1.6449.1.2.2.15':
      OIDEntry('wotrustPolicy', 'WoTrust (Comodo) CA', false),
  '1.3.6.1.4.1.6449.1.3.5.2':
      OIDEntry('comodoCertifiedDeliveryService', 'Comodo CA', false),
  '1.3.6.1.4.1.6449.2.1.1':
      OIDEntry('comodoTimestampingPolicy', 'Comodo CA', false),
  '1.3.6.1.4.1.8301.3.5.1':
      OIDEntry('validityModelChain', 'TU Darmstadt ValidityModel', false),
  '1.3.6.1.4.1.8301.3.5.2':
      OIDEntry('validityModelShell', 'ValidityModel', false),
  '1.3.6.1.4.1.8231.1': OIDEntry('rolUnicoNacional',
      'Chilean Government national unique roll number', false),
  '1.3.6.1.4.1.11591': OIDEntry(
      'gnu', 'GNU Project (see http://www.gnupg.org/oids.html)', false),
  '1.3.6.1.4.1.11591.1': OIDEntry('gnuRadius', 'GNU Radius', false),
  '1.3.6.1.4.1.11591.3': OIDEntry('gnuRadar', 'GNU Radar', false),
  '1.3.6.1.4.1.11591.4.11':
      OIDEntry('scrypt', 'GNU Generic Security Service', false),
  '1.3.6.1.4.1.11591.12':
      OIDEntry('gnuDigestAlgorithm', 'GNU digest algorithm', false),
  '1.3.6.1.4.1.11591.12.2': OIDEntry('tiger', 'GNU digest algorithm', false),
  '1.3.6.1.4.1.11591.13':
      OIDEntry('gnuEncryptionAlgorithm', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2':
      OIDEntry('serpent', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.1':
      OIDEntry('serpent128_ECB', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.2':
      OIDEntry('serpent128_CBC', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.3':
      OIDEntry('serpent128_OFB', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.4':
      OIDEntry('serpent128_CFB', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.21':
      OIDEntry('serpent192_ECB', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.22':
      OIDEntry('serpent192_CBC', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.23':
      OIDEntry('serpent192_OFB', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.24':
      OIDEntry('serpent192_CFB', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.41':
      OIDEntry('serpent256_ECB', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.42':
      OIDEntry('serpent256_CBC', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.43':
      OIDEntry('serpent256_OFB', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.13.2.44':
      OIDEntry('serpent256_CFB', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.15.1':
      OIDEntry('curve25519', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.15.2':
      OIDEntry('curve448', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.15.3':
      OIDEntry('curve25519ph', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.11591.15.4':
      OIDEntry('curve448ph', 'GNU encryption algorithm', false),
  '1.3.6.1.4.1.16334.509.1.1': OIDEntry('Northrop Grumman extKeyUsage?',
      'Northrop Grumman extended key usage', false),
  '1.3.6.1.4.1.16334.509.2.1':
      OIDEntry('ngcClass1', 'Northrop Grumman policy', false),
  '1.3.6.1.4.1.16334.509.2.2':
      OIDEntry('ngcClass2', 'Northrop Grumman policy', false),
  '1.3.6.1.4.1.16334.509.2.3':
      OIDEntry('ngcClass3', 'Northrop Grumman policy', false),
  '1.3.6.1.4.1.23629.1.4.2.1.1':
      OIDEntry('safenetUsageLimit', 'SafeNet', false),
  '1.3.6.1.4.1.23629.1.4.2.1.2': OIDEntry('safenetEndDate', 'SafeNet', false),
  '1.3.6.1.4.1.23629.1.4.2.1.3': OIDEntry('safenetStartDate', 'SafeNet', false),
  '1.3.6.1.4.1.23629.1.4.2.1.4': OIDEntry('safenetAdminCert', 'SafeNet', false),
  '1.3.6.1.4.1.23629.1.4.2.2.1': OIDEntry('safenetKeyDigest', 'SafeNet', false),
  '1.3.6.1.5.2.3.1': OIDEntry('authData', 'Kerberos', false),
  '1.3.6.1.5.2.3.2': OIDEntry('dHKeyData', 'Kerberos', false),
  '1.3.6.1.5.2.3.3': OIDEntry('rkeyData', 'Kerberos', false),
  '1.3.6.1.5.2.3.4': OIDEntry('keyPurposeClientAuth', 'Kerberos', false),
  '1.3.6.1.5.2.3.5': OIDEntry('keyPurposeKdc', 'Kerberos', false),
  '1.3.6.1.5.2.3.6': OIDEntry('kdf', 'Kerberos', false),
  '1.3.6.1.5.5.7': OIDEntry('pkix', 'null', false),
  '1.3.6.1.5.5.7.0.12': OIDEntry('attributeCert', 'PKIX', false),
  '1.3.6.1.5.5.7.1': OIDEntry('privateExtension', 'PKIX', false),
  '1.3.6.1.5.5.7.1.1':
      OIDEntry('authorityInfoAccess', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.2':
      OIDEntry('biometricInfo', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.3':
      OIDEntry('qcStatements', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.4':
      OIDEntry('acAuditIdentity', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.5': OIDEntry('acTargeting', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.6':
      OIDEntry('acAaControls', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.7':
      OIDEntry('ipAddrBlocks', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.8':
      OIDEntry('autonomousSysIds', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.9':
      OIDEntry('routerIdentifier', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.10': OIDEntry('acProxying', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.11':
      OIDEntry('subjectInfoAccess', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.12': OIDEntry('logoType', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.13': OIDEntry('wlanSSID', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.14':
      OIDEntry('proxyCertInfo', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.15': OIDEntry('acPolicies', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.16':
      OIDEntry('certificateWarranty', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.18':
      OIDEntry('cmsContentConstraints', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.19': OIDEntry('otherCerts', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.20':
      OIDEntry('wrappedApexContinKey', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.21':
      OIDEntry('clearanceConstraints', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.22':
      OIDEntry('skiSemantics', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.23':
      OIDEntry('noSecrecyAfforded', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.24': OIDEntry('tlsFeature', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.25':
      OIDEntry('manufacturerUsageDescription', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.26': OIDEntry('tnAuthList', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.27':
      OIDEntry('jwtClaimConstraints', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.28':
      OIDEntry('ipAddrBlocksV2', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.29':
      OIDEntry('autonomousSysIdsV2', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.30': OIDEntry(
      'manufacturerUsageDescriptionSigner', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.1.31':
      OIDEntry('acmeIdentifier', 'PKIX private extension', false),
  '1.3.6.1.5.5.7.2': OIDEntry('policyQualifierIds', 'PKIX', false),
  '1.3.6.1.5.5.7.2.1': OIDEntry('cps', 'PKIX policy qualifier', false),
  '1.3.6.1.5.5.7.2.2': OIDEntry('unotice', 'PKIX policy qualifier', false),
  '1.3.6.1.5.5.7.2.3': OIDEntry('textNotice', 'PKIX policy qualifier', false),
  '1.3.6.1.5.5.7.3': OIDEntry('keyPurpose', 'PKIX', false),
  '1.3.6.1.5.5.7.3.1': OIDEntry('serverAuth', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.2': OIDEntry('clientAuth', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.3': OIDEntry('codeSigning', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.4': OIDEntry('emailProtection', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.5': OIDEntry('ipsecEndSystem', 'PKIX key purpose', true),
  '1.3.6.1.5.5.7.3.6': OIDEntry('ipsecTunnel', 'PKIX key purpose', true),
  '1.3.6.1.5.5.7.3.7': OIDEntry('ipsecUser', 'PKIX key purpose', true),
  '1.3.6.1.5.5.7.3.8': OIDEntry('timeStamping', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.9': OIDEntry('ocspSigning', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.10': OIDEntry('dvcs', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.11':
      OIDEntry('sbgpCertAAServerAuth', 'PKIX key purpose', true),
  '1.3.6.1.5.5.7.3.12': OIDEntry('scvpResponder', 'PKIX key purpose', true),
  '1.3.6.1.5.5.7.3.13': OIDEntry('eapOverPPP', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.14': OIDEntry('eapOverLAN', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.15': OIDEntry('scvpServer', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.16': OIDEntry('scvpClient', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.17': OIDEntry('ipsecIKE', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.18': OIDEntry('capwapAC', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.19': OIDEntry('capwapWTP', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.20': OIDEntry('sipDomain', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.21':
      OIDEntry('secureShellClient', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.22':
      OIDEntry('secureShellServer', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.23': OIDEntry('sendRouter', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.24':
      OIDEntry('sendProxiedRouter', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.25': OIDEntry('sendOwner', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.26': OIDEntry('sendProxiedOwner', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.27': OIDEntry('cmcCA', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.28': OIDEntry('cmcRA', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.29': OIDEntry('cmcArchive', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.3.30': OIDEntry('bgpsecRouter', 'PKIX key purpose', false),
  '1.3.6.1.5.5.7.4': OIDEntry('cmpInformationTypes', 'PKIX', false),
  '1.3.6.1.5.5.7.4.1': OIDEntry('caProtEncCert', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.2':
      OIDEntry('signKeyPairTypes', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.3':
      OIDEntry('encKeyPairTypes', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.4':
      OIDEntry('preferredSymmAlg', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.5':
      OIDEntry('caKeyUpdateInfo', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.6': OIDEntry('currentCRL', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.7':
      OIDEntry('unsupportedOIDs', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.10':
      OIDEntry('keyPairParamReq', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.11':
      OIDEntry('keyPairParamRep', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.12':
      OIDEntry('revPassphrase', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.13':
      OIDEntry('implicitConfirm', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.14':
      OIDEntry('confirmWaitTime', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.15':
      OIDEntry('origPKIMessage', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.4.16': OIDEntry('suppLangTags', 'PKIX CMP information', false),
  '1.3.6.1.5.5.7.5': OIDEntry('crmfRegistration', 'PKIX', false),
  '1.3.6.1.5.5.7.5.1': OIDEntry('regCtrl', 'PKIX CRMF registration', false),
  '1.3.6.1.5.5.7.5.1.1':
      OIDEntry('regToken', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.5.1.2':
      OIDEntry('authenticator', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.5.1.3':
      OIDEntry('pkiPublicationInfo', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.5.1.4':
      OIDEntry('pkiArchiveOptions', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.5.1.5':
      OIDEntry('oldCertID', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.5.1.6':
      OIDEntry('protocolEncrKey', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.5.1.7':
      OIDEntry('altCertTemplate', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.5.1.8':
      OIDEntry('wtlsTemplate', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.5.2': OIDEntry('utf8Pairs', 'PKIX CRMF registration', false),
  '1.3.6.1.5.5.7.5.2.1':
      OIDEntry('utf8Pairs', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.5.2.2':
      OIDEntry('certReq', 'PKIX CRMF registration control', false),
  '1.3.6.1.5.5.7.6': OIDEntry('algorithms', 'PKIX', false),
  '1.3.6.1.5.5.7.6.1': OIDEntry('des40', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.2': OIDEntry('noSignature', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.3': OIDEntry('dhSigHmacSha1', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.4': OIDEntry('dhPop', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.5': OIDEntry('dhPopSha224', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.6': OIDEntry('dhPopSha256', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.7': OIDEntry('dhPopSha384', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.8': OIDEntry('dhPopSha512', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.15':
      OIDEntry('dhPopStaticSha224HmacSha224', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.16':
      OIDEntry('dhPopStaticSha256HmacSha256', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.17':
      OIDEntry('dhPopStaticSha384HmacSha384', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.18':
      OIDEntry('dhPopStaticSha512HmacSha512', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.25':
      OIDEntry('ecdhPopStaticSha224HmacSha224', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.26':
      OIDEntry('ecdhPopStaticSha256HmacSha256', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.27':
      OIDEntry('ecdhPopStaticSha384HmacSha384', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.6.28':
      OIDEntry('ecdhPopStaticSha512HmacSha512', 'PKIX algorithm', false),
  '1.3.6.1.5.5.7.7': OIDEntry('cmcControls', 'PKIX', false),
  '1.3.6.1.5.5.7.8': OIDEntry('otherNames', 'PKIX', false),
  '1.3.6.1.5.5.7.8.1': OIDEntry('personalData', 'PKIX other name', false),
  '1.3.6.1.5.5.7.8.2': OIDEntry('userGroup', 'PKIX other name', false),
  '1.3.6.1.5.5.7.8.5': OIDEntry('xmppAddr', 'PKIX other name', false),
  '1.3.6.1.5.5.7.9':
      OIDEntry('personalData', 'PKIX qualified certificates', false),
  '1.3.6.1.5.5.7.9.1': OIDEntry('dateOfBirth', 'PKIX personal data', false),
  '1.3.6.1.5.5.7.9.2': OIDEntry('placeOfBirth', 'PKIX personal data', false),
  '1.3.6.1.5.5.7.9.3': OIDEntry('gender', 'PKIX personal data', false),
  '1.3.6.1.5.5.7.9.4':
      OIDEntry('countryOfCitizenship', 'PKIX personal data', false),
  '1.3.6.1.5.5.7.9.5':
      OIDEntry('countryOfResidence', 'PKIX personal data', false),
  '1.3.6.1.5.5.7.10': OIDEntry('attributeCertificate', 'PKIX', false),
  '1.3.6.1.5.5.7.10.1': OIDEntry(
      'authenticationInfo', 'PKIX attribute certificate extension', false),
  '1.3.6.1.5.5.7.10.2':
      OIDEntry('accessIdentity', 'PKIX attribute certificate extension', false),
  '1.3.6.1.5.5.7.10.3': OIDEntry(
      'chargingIdentity', 'PKIX attribute certificate extension', false),
  '1.3.6.1.5.5.7.10.4':
      OIDEntry('group', 'PKIX attribute certificate extension', false),
  '1.3.6.1.5.5.7.10.5':
      OIDEntry('role', 'PKIX attribute certificate extension', false),
  '1.3.6.1.5.5.7.10.6':
      OIDEntry('wlanSSID', 'PKIX attribute-certificate extension', false),
  '1.3.6.1.5.5.7.11':
      OIDEntry('personalData', 'PKIX qualified certificates', false),
  '1.3.6.1.5.5.7.11.1':
      OIDEntry('pkixQCSyntax-v1', 'PKIX qualified certificates', false),
  '1.3.6.1.5.5.7.14.2':
      OIDEntry('resourceCertificatePolicy', 'PKIX policies', false),
  '1.3.6.1.5.5.7.20': OIDEntry('logo', 'PKIX qualified certificates', false),
  '1.3.6.1.5.5.7.20.1': OIDEntry('logoLoyalty', 'PKIX', false),
  '1.3.6.1.5.5.7.20.2': OIDEntry('logoBackground', 'PKIX', false),
  '1.3.6.1.5.5.7.48.1': OIDEntry('ocsp', 'PKIX', false),
  '1.3.6.1.5.5.7.48.1.1': OIDEntry('ocspBasic', 'OCSP', false),
  '1.3.6.1.5.5.7.48.1.2': OIDEntry('ocspNonce', 'OCSP', false),
  '1.3.6.1.5.5.7.48.1.3': OIDEntry('ocspCRL', 'OCSP', false),
  '1.3.6.1.5.5.7.48.1.4': OIDEntry('ocspResponse', 'OCSP', false),
  '1.3.6.1.5.5.7.48.1.5': OIDEntry('ocspNoCheck', 'OCSP', false),
  '1.3.6.1.5.5.7.48.1.6': OIDEntry('ocspArchiveCutoff', 'OCSP', false),
  '1.3.6.1.5.5.7.48.1.7': OIDEntry('ocspServiceLocator', 'OCSP', false),
  '1.3.6.1.5.5.7.48.2': OIDEntry(
      'caIssuers', 'PKIX subject/authority info access descriptor', false),
  '1.3.6.1.5.5.7.48.3': OIDEntry(
      'timeStamping', 'PKIX subject/authority info access descriptor', false),
  '1.3.6.1.5.5.7.48.4':
      OIDEntry('dvcs', 'PKIX subject/authority info access descriptor', false),
  '1.3.6.1.5.5.7.48.5': OIDEntry(
      'caRepository', 'PKIX subject/authority info access descriptor', false),
  '1.3.6.1.5.5.7.48.7': OIDEntry('signedObjectRepository',
      'PKIX subject/authority info access descriptor', false),
  '1.3.6.1.5.5.7.48.10': OIDEntry(
      'rpkiManifest', 'PKIX subject/authority info access descriptor', false),
  '1.3.6.1.5.5.7.48.11': OIDEntry(
      'signedObject', 'PKIX subject/authority info access descriptor', false),
  '1.3.6.1.5.5.8.1.1': OIDEntry('hmacMD5', 'ISAKMP HMAC algorithm', false),
  '1.3.6.1.5.5.8.1.2': OIDEntry('hmacSHA', 'ISAKMP HMAC algorithm', false),
  '1.3.6.1.5.5.8.1.3': OIDEntry('hmacTiger', 'ISAKMP HMAC algorithm', false),
  '1.3.6.1.5.5.8.2.2': OIDEntry('iKEIntermediate', 'IKE ???', false),
  '1.3.12.2.1011.7.1':
      OIDEntry('decEncryptionAlgorithm', 'DASS algorithm', false),
  '1.3.12.2.1011.7.1.2': OIDEntry('decDEA', 'DASS encryption algorithm', false),
  '1.3.12.2.1011.7.2': OIDEntry('decHashAlgorithm', 'DASS algorithm', false),
  '1.3.12.2.1011.7.2.1': OIDEntry('decMD2', 'DASS hash algorithm', false),
  '1.3.12.2.1011.7.2.2': OIDEntry('decMD4', 'DASS hash algorithm', false),
  '1.3.12.2.1011.7.3':
      OIDEntry('decSignatureAlgorithm', 'DASS algorithm', false),
  '1.3.12.2.1011.7.3.1':
      OIDEntry('decMD2withRSA', 'DASS signature algorithm', false),
  '1.3.12.2.1011.7.3.2':
      OIDEntry('decMD4withRSA', 'DASS signature algorithm', false),
  '1.3.12.2.1011.7.3.3':
      OIDEntry('decDEAMAC', 'DASS signature algorithm', false),
  '1.3.14.2.26.5': OIDEntry('sha', 'Unsure about this OID', false),
  '1.3.14.3.2.1.1': OIDEntry('rsa', 'X.509. Unsure about this OID', false),
  '1.3.14.3.2.2': OIDEntry('md4WitRSA', 'Oddball OIW OID', false),
  '1.3.14.3.2.3': OIDEntry('md5WithRSA', 'Oddball OIW OID', false),
  '1.3.14.3.2.4': OIDEntry('md4WithRSAEncryption', 'Oddball OIW OID', false),
  '1.3.14.3.2.2.1': OIDEntry('sqmod-N', 'X.509. Deprecated', true),
  '1.3.14.3.2.3.1': OIDEntry('sqmod-NwithRSA', 'X.509. Deprecated', true),
  '1.3.14.3.2.6': OIDEntry('desECB', 'null', false),
  '1.3.14.3.2.7': OIDEntry('desCBC', 'null', false),
  '1.3.14.3.2.8': OIDEntry('desOFB', 'null', false),
  '1.3.14.3.2.9': OIDEntry('desCFB', 'null', false),
  '1.3.14.3.2.10': OIDEntry('desMAC', 'null', false),
  '1.3.14.3.2.11':
      OIDEntry('rsaSignature', 'ISO 9796-2, also X9.31 Part 1', false),
  '1.3.14.3.2.12': OIDEntry(
      'dsa',
      'OIW?, supposedly from an incomplete version of SDN.701 (doesn\'t match final SDN.701)',
      true),
  '1.3.14.3.2.13': OIDEntry(
      'dsaWithSHA',
      'Oddball OIW OID.  Incorrectly used by JDK 1.1 in place of (1 3 14 3 2 27)',
      true),
  '1.3.14.3.2.14': OIDEntry('mdc2WithRSASignature',
      'Oddball OIW OID using 9796-2 padding rules', false),
  '1.3.14.3.2.15': OIDEntry('shaWithRSASignature',
      'Oddball OIW OID using 9796-2 padding rules', false),
  '1.3.14.3.2.16': OIDEntry('dhWithCommonModulus',
      'Oddball OIW OID. Deprecated, use a plain DH OID instead', true),
  '1.3.14.3.2.17': OIDEntry('desEDE', 'Oddball OIW OID. Mode is ECB', false),
  '1.3.14.3.2.18': OIDEntry('sha', 'Oddball OIW OID', false),
  '1.3.14.3.2.19': OIDEntry('mdc-2',
      'Oddball OIW OID, DES-based hash, planned for X9.31 Part 2', false),
  '1.3.14.3.2.20': OIDEntry('dsaCommon',
      'Oddball OIW OID.  Deprecated, use a plain DSA OID instead', true),
  '1.3.14.3.2.21': OIDEntry('dsaCommonWithSHA',
      'Oddball OIW OID.  Deprecated, use a plain dsaWithSHA OID instead', true),
  '1.3.14.3.2.22': OIDEntry('rsaKeyTransport', 'Oddball OIW OID', false),
  '1.3.14.3.2.23': OIDEntry('keyed-hash-seal', 'Oddball OIW OID', false),
  '1.3.14.3.2.24': OIDEntry('md2WithRSASignature',
      'Oddball OIW OID using 9796-2 padding rules', false),
  '1.3.14.3.2.25': OIDEntry('md5WithRSASignature',
      'Oddball OIW OID using 9796-2 padding rules', false),
  '1.3.14.3.2.26': OIDEntry('sha1', 'OIW', false),
  '1.3.14.3.2.27': OIDEntry(
      'dsaWithSHA1', 'OIW. This OID may also be assigned as ripemd-160', false),
  '1.3.14.3.2.28': OIDEntry('dsaWithCommonSHA1', 'OIW', false),
  '1.3.14.3.2.29': OIDEntry('sha-1WithRSAEncryption', 'Oddball OIW OID', false),
  '1.3.14.3.3.1':
      OIDEntry('simple-strong-auth-mechanism', 'Oddball OIW OID', false),
  '1.3.14.7.2.1.1': OIDEntry('ElGamal', 'Unsure about this OID', false),
  '1.3.14.7.2.3.1': OIDEntry('md2WithRSA', 'Unsure about this OID', false),
  '1.3.14.7.2.3.2': OIDEntry('md2WithElGamal', 'Unsure about this OID', false),
  '1.3.36.1': OIDEntry('document', 'Teletrust document', false),
  '1.3.36.1.1': OIDEntry('finalVersion', 'Teletrust document', false),
  '1.3.36.1.2': OIDEntry('draft', 'Teletrust document', false),
  '1.3.36.2': OIDEntry('sio', 'Teletrust sio', false),
  '1.3.36.2.1': OIDEntry('sedu', 'Teletrust sio', false),
  '1.3.36.3': OIDEntry('algorithm', 'Teletrust algorithm', false),
  '1.3.36.3.1': OIDEntry('encryptionAlgorithm', 'Teletrust algorithm', false),
  '1.3.36.3.1.1': OIDEntry('des', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.1.1':
      OIDEntry('desECB_pad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.1.1.1':
      OIDEntry('desECB_ISOpad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.1.2.1':
      OIDEntry('desCBC_pad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.1.2.1.1':
      OIDEntry('desCBC_ISOpad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.3': OIDEntry('des_3', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.3.1.1': OIDEntry(
      'des_3ECB_pad', 'Teletrust encryption algorithm. EDE triple DES', false),
  '1.3.36.3.1.3.1.1.1': OIDEntry('des_3ECB_ISOpad',
      'Teletrust encryption algorithm. EDE triple DES', false),
  '1.3.36.3.1.3.2.1': OIDEntry(
      'des_3CBC_pad', 'Teletrust encryption algorithm. EDE triple DES', false),
  '1.3.36.3.1.3.2.1.1': OIDEntry('des_3CBC_ISOpad',
      'Teletrust encryption algorithm. EDE triple DES', false),
  '1.3.36.3.1.2': OIDEntry('idea', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.2.1':
      OIDEntry('ideaECB', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.2.1.1':
      OIDEntry('ideaECB_pad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.2.1.1.1':
      OIDEntry('ideaECB_ISOpad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.2.2':
      OIDEntry('ideaCBC', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.2.2.1':
      OIDEntry('ideaCBC_pad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.2.2.1.1':
      OIDEntry('ideaCBC_ISOpad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.2.3':
      OIDEntry('ideaOFB', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.2.4':
      OIDEntry('ideaCFB', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.4':
      OIDEntry('rsaEncryption', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.4.512.17': OIDEntry('rsaEncryptionWithlmod512expe17',
      'Teletrust encryption algorithm', false),
  '1.3.36.3.1.5': OIDEntry('bsi-1', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.5.1':
      OIDEntry('bsi_1ECB_pad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.5.2':
      OIDEntry('bsi_1CBC_pad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.1.5.2.1':
      OIDEntry('bsi_1CBC_PEMpad', 'Teletrust encryption algorithm', false),
  '1.3.36.3.2': OIDEntry('hashAlgorithm', 'Teletrust algorithm', false),
  '1.3.36.3.2.1': OIDEntry('ripemd160', 'Teletrust hash algorithm', false),
  '1.3.36.3.2.2': OIDEntry('ripemd128', 'Teletrust hash algorithm', false),
  '1.3.36.3.2.3': OIDEntry('ripemd256', 'Teletrust hash algorithm', false),
  '1.3.36.3.2.4':
      OIDEntry('mdc2singleLength', 'Teletrust hash algorithm', false),
  '1.3.36.3.2.5':
      OIDEntry('mdc2doubleLength', 'Teletrust hash algorithm', false),
  '1.3.36.3.3': OIDEntry('signatureAlgorithm', 'Teletrust algorithm', false),
  '1.3.36.3.3.1':
      OIDEntry('rsaSignature', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1':
      OIDEntry('rsaSignatureWithsha1', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.512.2': OIDEntry(
      'rsaSignatureWithsha1_l512_l2', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.640.2': OIDEntry(
      'rsaSignatureWithsha1_l640_l2', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.768.2': OIDEntry(
      'rsaSignatureWithsha1_l768_l2', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.896.2': OIDEntry(
      'rsaSignatureWithsha1_l896_l2', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.1024.2': OIDEntry(
      'rsaSignatureWithsha1_l1024_l2', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.512.3': OIDEntry(
      'rsaSignatureWithsha1_l512_l3', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.640.3': OIDEntry(
      'rsaSignatureWithsha1_l640_l3', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.768.3': OIDEntry(
      'rsaSignatureWithsha1_l768_l3', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.896.3': OIDEntry(
      'rsaSignatureWithsha1_l896_l3', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.1024.3': OIDEntry(
      'rsaSignatureWithsha1_l1024_l3', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.512.5': OIDEntry(
      'rsaSignatureWithsha1_l512_l5', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.640.5': OIDEntry(
      'rsaSignatureWithsha1_l640_l5', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.768.5': OIDEntry(
      'rsaSignatureWithsha1_l768_l5', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.896.5': OIDEntry(
      'rsaSignatureWithsha1_l896_l5', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.1024.5': OIDEntry(
      'rsaSignatureWithsha1_l1024_l5', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.512.9': OIDEntry(
      'rsaSignatureWithsha1_l512_l9', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.640.9': OIDEntry(
      'rsaSignatureWithsha1_l640_l9', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.768.9': OIDEntry(
      'rsaSignatureWithsha1_l768_l9', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.896.9': OIDEntry(
      'rsaSignatureWithsha1_l896_l9', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.1024.9': OIDEntry(
      'rsaSignatureWithsha1_l1024_l9', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.512.11': OIDEntry(
      'rsaSignatureWithsha1_l512_l11', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.640.11': OIDEntry(
      'rsaSignatureWithsha1_l640_l11', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.768.11': OIDEntry(
      'rsaSignatureWithsha1_l768_l11', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.896.11': OIDEntry(
      'rsaSignatureWithsha1_l896_l11', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.1.1024.11': OIDEntry(
      'rsaSignatureWithsha1_l1024_l11', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2': OIDEntry(
      'rsaSignatureWithripemd160', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.512.2': OIDEntry('rsaSignatureWithripemd160_l512_l2',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.640.2': OIDEntry('rsaSignatureWithripemd160_l640_l2',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.768.2': OIDEntry('rsaSignatureWithripemd160_l768_l2',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.896.2': OIDEntry('rsaSignatureWithripemd160_l896_l2',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.1024.2': OIDEntry('rsaSignatureWithripemd160_l1024_l2',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.512.3': OIDEntry('rsaSignatureWithripemd160_l512_l3',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.640.3': OIDEntry('rsaSignatureWithripemd160_l640_l3',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.768.3': OIDEntry('rsaSignatureWithripemd160_l768_l3',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.896.3': OIDEntry('rsaSignatureWithripemd160_l896_l3',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.1024.3': OIDEntry('rsaSignatureWithripemd160_l1024_l3',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.512.5': OIDEntry('rsaSignatureWithripemd160_l512_l5',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.640.5': OIDEntry('rsaSignatureWithripemd160_l640_l5',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.768.5': OIDEntry('rsaSignatureWithripemd160_l768_l5',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.896.5': OIDEntry('rsaSignatureWithripemd160_l896_l5',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.1024.5': OIDEntry('rsaSignatureWithripemd160_l1024_l5',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.512.9': OIDEntry('rsaSignatureWithripemd160_l512_l9',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.640.9': OIDEntry('rsaSignatureWithripemd160_l640_l9',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.768.9': OIDEntry('rsaSignatureWithripemd160_l768_l9',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.896.9': OIDEntry('rsaSignatureWithripemd160_l896_l9',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.1024.9': OIDEntry('rsaSignatureWithripemd160_l1024_l9',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.512.11': OIDEntry('rsaSignatureWithripemd160_l512_l11',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.640.11': OIDEntry('rsaSignatureWithripemd160_l640_l11',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.768.11': OIDEntry('rsaSignatureWithripemd160_l768_l11',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.896.11': OIDEntry('rsaSignatureWithripemd160_l896_l11',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.2.1024.11': OIDEntry('rsaSignatureWithripemd160_l1024_l11',
      'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.3': OIDEntry(
      'rsaSignatureWithrimpemd128', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.1.4': OIDEntry(
      'rsaSignatureWithrimpemd256', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.2': OIDEntry('ecsieSign', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.2.1':
      OIDEntry('ecsieSignWithsha1', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.2.2': OIDEntry(
      'ecsieSignWithripemd160', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.2.3':
      OIDEntry('ecsieSignWithmd2', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.2.4':
      OIDEntry('ecsieSignWithmd5', 'Teletrust signature algorithm', false),
  '1.3.36.3.3.2.8.1.1.1': OIDEntry('brainpoolP160r1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.2': OIDEntry('brainpoolP160t1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.3': OIDEntry('brainpoolP192r1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.4': OIDEntry('brainpoolP192t1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.5': OIDEntry('brainpoolP224r1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.6': OIDEntry('brainpoolP224t1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.7': OIDEntry('brainpoolP256r1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.8': OIDEntry('brainpoolP256t1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.9': OIDEntry('brainpoolP320r1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.10': OIDEntry('brainpoolP320t1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.11': OIDEntry('brainpoolP384r1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.12': OIDEntry('brainpoolP384t1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.13': OIDEntry('brainpoolP512r1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.3.2.8.1.1.14': OIDEntry('brainpoolP512t1',
      'ECC Brainpool Standard Curves and Curve Generation', false),
  '1.3.36.3.4': OIDEntry('signatureScheme', 'Teletrust algorithm', false),
  '1.3.36.3.4.1':
      OIDEntry('sigS_ISO9796-1', 'Teletrust signature scheme', false),
  '1.3.36.3.4.2':
      OIDEntry('sigS_ISO9796-2', 'Teletrust signature scheme', false),
  '1.3.36.3.4.2.1': OIDEntry('sigS_ISO9796-2Withred',
      'Teletrust signature scheme. Unsure what this is supposed to be', false),
  '1.3.36.3.4.2.2': OIDEntry('sigS_ISO9796-2Withrsa',
      'Teletrust signature scheme. Unsure what this is supposed to be', false),
  '1.3.36.3.4.2.3': OIDEntry(
      'sigS_ISO9796-2Withrnd',
      'Teletrust signature scheme. 9796-2 with random number in padding field',
      false),
  '1.3.36.4': OIDEntry('attribute', 'Teletrust attribute', false),
  '1.3.36.5': OIDEntry('policy', 'Teletrust policy', false),
  '1.3.36.6': OIDEntry('api', 'Teletrust API', false),
  '1.3.36.6.1': OIDEntry('manufacturer-specific_api', 'Teletrust API', false),
  '1.3.36.6.1.1': OIDEntry('utimaco-api', 'Teletrust API', false),
  '1.3.36.6.2': OIDEntry('functionality-specific_api', 'Teletrust API', false),
  '1.3.36.7': OIDEntry('keymgmnt', 'Teletrust key management', false),
  '1.3.36.7.1': OIDEntry('keyagree', 'Teletrust key management', false),
  '1.3.36.7.1.1': OIDEntry('bsiPKE', 'Teletrust key management', false),
  '1.3.36.7.2': OIDEntry('keytrans', 'Teletrust key management', false),
  '1.3.36.7.2.1': OIDEntry('encISO9796-2Withrsa',
      'Teletrust key management. 9796-2 with key stored in hash field', false),
  '1.3.36.8.1.1': OIDEntry(
      'Teletrust SigGConform policyIdentifier', 'Teletrust policy', false),
  '1.3.36.8.2.1':
      OIDEntry('directoryService', 'Teletrust extended key usage', false),
  '1.3.36.8.3.1': OIDEntry('dateOfCertGen', 'Teletrust attribute', false),
  '1.3.36.8.3.2': OIDEntry('procuration', 'Teletrust attribute', false),
  '1.3.36.8.3.3': OIDEntry('admission', 'Teletrust attribute', false),
  '1.3.36.8.3.4': OIDEntry('monetaryLimit', 'Teletrust attribute', false),
  '1.3.36.8.3.5':
      OIDEntry('declarationOfMajority', 'Teletrust attribute', false),
  '1.3.36.8.3.6': OIDEntry(
      'integratedCircuitCardSerialNumber', 'Teletrust attribute', false),
  '1.3.36.8.3.7': OIDEntry('pKReference', 'Teletrust attribute', false),
  '1.3.36.8.3.8': OIDEntry('restriction', 'Teletrust attribute', false),
  '1.3.36.8.3.9': OIDEntry('retrieveIfAllowed', 'Teletrust attribute', false),
  '1.3.36.8.3.10':
      OIDEntry('requestedCertificate', 'Teletrust attribute', false),
  '1.3.36.8.3.11': OIDEntry('namingAuthorities', 'Teletrust attribute', false),
  '1.3.36.8.3.11.1':
      OIDEntry('rechtWirtschaftSteuern', 'Teletrust naming authorities', false),
  '1.3.36.8.3.11.1.1':
      OIDEntry('rechtsanwaeltin', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.2':
      OIDEntry('rechtsanwalt', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.3':
      OIDEntry('rechtsBeistand', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.4':
      OIDEntry('steuerBeraterin', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.5':
      OIDEntry('steuerBerater', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.6':
      OIDEntry('steuerBevollmaechtigte', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.7':
      OIDEntry('steuerBevollmaechtigter', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.8': OIDEntry('notarin', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.9': OIDEntry('notar', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.10':
      OIDEntry('notarVertreterin', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.11':
      OIDEntry('notarVertreter', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.12':
      OIDEntry('notariatsVerwalterin', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.13':
      OIDEntry('notariatsVerwalter', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.14':
      OIDEntry('wirtschaftsPrueferin', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.15':
      OIDEntry('wirtschaftsPruefer', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.16':
      OIDEntry('vereidigteBuchprueferin', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.17':
      OIDEntry('vereidigterBuchpruefer', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.18':
      OIDEntry('patentAnwaeltin', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.11.1.19':
      OIDEntry('patentAnwalt', 'Teletrust ProfessionInfo', false),
  '1.3.36.8.3.12':
      OIDEntry('certInDirSince', 'Teletrust OCSP attribute (obsolete)', true),
  '1.3.36.8.3.13': OIDEntry('certHash', 'Teletrust OCSP attribute', false),
  '1.3.36.8.3.14': OIDEntry('nameAtBirth', 'Teletrust attribute', false),
  '1.3.36.8.3.15':
      OIDEntry('additionalInformation', 'Teletrust attribute', false),
  '1.3.36.8.4.1':
      OIDEntry('personalData', 'Teletrust OtherName attribute', false),
  '1.3.36.8.4.8': OIDEntry(
      'restriction', 'Teletrust attribute certificate attribute', false),
  '1.3.36.8.5.1.1.1':
      OIDEntry('rsaIndicateSHA1', 'Teletrust signature algorithm', false),
  '1.3.36.8.5.1.1.2':
      OIDEntry('rsaIndicateRIPEMD160', 'Teletrust signature algorithm', false),
  '1.3.36.8.5.1.1.3':
      OIDEntry('rsaWithSHA1', 'Teletrust signature algorithm', false),
  '1.3.36.8.5.1.1.4':
      OIDEntry('rsaWithRIPEMD160', 'Teletrust signature algorithm', false),
  '1.3.36.8.5.1.2.1':
      OIDEntry('dsaExtended', 'Teletrust signature algorithm', false),
  '1.3.36.8.5.1.2.2':
      OIDEntry('dsaWithRIPEMD160', 'Teletrust signature algorithm', false),
  '1.3.36.8.6.1': OIDEntry('cert', 'Teletrust signature attributes', false),
  '1.3.36.8.6.2': OIDEntry('certRef', 'Teletrust signature attributes', false),
  '1.3.36.8.6.3': OIDEntry('attrCert', 'Teletrust signature attributes', false),
  '1.3.36.8.6.4': OIDEntry('attrRef', 'Teletrust signature attributes', false),
  '1.3.36.8.6.5': OIDEntry('fileName', 'Teletrust signature attributes', false),
  '1.3.36.8.6.6':
      OIDEntry('storageTime', 'Teletrust signature attributes', false),
  '1.3.36.8.6.7': OIDEntry('fileSize', 'Teletrust signature attributes', false),
  '1.3.36.8.6.8': OIDEntry('location', 'Teletrust signature attributes', false),
  '1.3.36.8.6.9':
      OIDEntry('sigNumber', 'Teletrust signature attributes', false),
  '1.3.36.8.6.10': OIDEntry('autoGen', 'Teletrust signature attributes', false),
  '1.3.36.8.7.1.1':
      OIDEntry('ptAdobeILL', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.2': OIDEntry('ptAmiPro', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.3':
      OIDEntry('ptAutoCAD', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.4': OIDEntry('ptBinary', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.5': OIDEntry('ptBMP', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.6': OIDEntry('ptCGM', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.7':
      OIDEntry('ptCorelCRT', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.8':
      OIDEntry('ptCorelDRW', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.9':
      OIDEntry('ptCorelEXC', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.10':
      OIDEntry('ptCorelPHT', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.11': OIDEntry('ptDraw', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.12': OIDEntry('ptDVI', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.13': OIDEntry('ptEPS', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.14': OIDEntry('ptExcel', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.15': OIDEntry('ptGEM', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.16': OIDEntry('ptGIF', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.17': OIDEntry('ptHPGL', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.18': OIDEntry('ptJPEG', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.19': OIDEntry('ptKodak', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.20': OIDEntry('ptLaTeX', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.21': OIDEntry('ptLotus', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.22':
      OIDEntry('ptLotusPIC', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.23':
      OIDEntry('ptMacPICT', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.24':
      OIDEntry('ptMacWord', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.25': OIDEntry('ptMSWfD', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.26':
      OIDEntry('ptMSWord', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.27':
      OIDEntry('ptMSWord2', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.28':
      OIDEntry('ptMSWord6', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.29':
      OIDEntry('ptMSWord8', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.30': OIDEntry('ptPDF', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.31': OIDEntry('ptPIF', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.32':
      OIDEntry('ptPostscript', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.33': OIDEntry('ptRTF', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.34':
      OIDEntry('ptSCITEX', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.35': OIDEntry('ptTAR', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.36': OIDEntry('ptTarga', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.37': OIDEntry('ptTeX', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.38': OIDEntry('ptText', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.39': OIDEntry('ptTIFF', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.40':
      OIDEntry('ptTIFF-FC', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.41': OIDEntry('ptUID', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.42':
      OIDEntry('ptUUEncode', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.43': OIDEntry('ptWMF', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.44':
      OIDEntry('ptWordPerfect', 'Teletrust presentation types', false),
  '1.3.36.8.7.1.45':
      OIDEntry('ptWPGrph', 'Teletrust presentation types', false),
  '1.3.101.1.4': OIDEntry('thawte-ce', 'Thawte', false),
  '1.3.101.1.4.1':
      OIDEntry('strongExtranet', 'Thawte certificate extension', false),
  '1.3.101.110':
      OIDEntry('curveX25519', 'ECDH 25519 key agreement algorithm', false),
  '1.3.101.111':
      OIDEntry('curveX448', 'ECDH 448 key agreement algorithm', false),
  '1.3.101.112':
      OIDEntry('curveEd25519', 'EdDSA 25519 signature algorithm', false),
  '1.3.101.113': OIDEntry('curveEd448', 'EdDSA 448 signature algorithm', false),
  '1.3.101.114': OIDEntry(
      'curveEd25519ph', 'EdDSA 25519 pre-hash signature algorithm', false),
  '1.3.101.115':
      OIDEntry('curveEd448ph', 'EdDSA 448 pre-hash signature algorithm', false),
  '1.3.132.0.1':
      OIDEntry('sect163k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.2':
      OIDEntry('sect163r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.3':
      OIDEntry('sect239k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.4':
      OIDEntry('sect113r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.5':
      OIDEntry('sect113r2', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.6':
      OIDEntry('secp112r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.7':
      OIDEntry('secp112r2', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.8':
      OIDEntry('secp160r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.9':
      OIDEntry('secp160k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.10':
      OIDEntry('secp256k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.15':
      OIDEntry('sect163r2', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.16':
      OIDEntry('sect283k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.17':
      OIDEntry('sect283r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.22':
      OIDEntry('sect131r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.23':
      OIDEntry('sect131r2', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.24':
      OIDEntry('sect193r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.25':
      OIDEntry('sect193r2', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.26':
      OIDEntry('sect233k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.27':
      OIDEntry('sect233r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.28':
      OIDEntry('secp128r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.29':
      OIDEntry('secp128r2', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.30':
      OIDEntry('secp160r2', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.31':
      OIDEntry('secp192k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.32':
      OIDEntry('secp224k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.33':
      OIDEntry('secp224r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.34':
      OIDEntry('secp384r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.35':
      OIDEntry('secp521r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.36':
      OIDEntry('sect409k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.37':
      OIDEntry('sect409r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.38':
      OIDEntry('sect571k1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.0.39':
      OIDEntry('sect571r1', 'SECG (Certicom) named elliptic curve', false),
  '1.3.132.1.11.1': OIDEntry('ecdhX963KDF-SHA256',
      'SECG (Certicom) elliptic curve key agreement', false),
  '1.3.132.1.11.2': OIDEntry('ecdhX963KDF-SHA384',
      'SECG (Certicom) elliptic curve key agreement', false),
  '1.3.132.1.11.3': OIDEntry('ecdhX963KDF-SHA512',
      'SECG (Certicom) elliptic curve key agreement', false),
  '1.3.133.16.840.9.44': OIDEntry('x944', 'X9.44', false),
  '1.3.133.16.840.9.44.1': OIDEntry('x944Components', 'X9.44', false),
  '1.3.133.16.840.9.44.1.1': OIDEntry('x944Kdf2', 'X9.44', false),
  '1.3.133.16.840.9.44.1.2': OIDEntry('x944Kdf3', 'X9.44', false),
  '1.3.133.16.840.9.84': OIDEntry('x984', 'X9.84', false),
  '1.3.133.16.840.9.84.0': OIDEntry('x984Module', 'X9.84', false),
  '1.3.133.16.840.9.84.0.1': OIDEntry('x984Biometrics', 'X9.84 Module', false),
  '1.3.133.16.840.9.84.0.2': OIDEntry('x984CMS', 'X9.84 Module', false),
  '1.3.133.16.840.9.84.0.3': OIDEntry('x984Identifiers', 'X9.84 Module', false),
  '1.3.133.16.840.9.84.1': OIDEntry('x984Biometric', 'X9.84', false),
  '1.3.133.16.840.9.84.1.0':
      OIDEntry('biometricUnknownType', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.1':
      OIDEntry('biometricBodyOdor', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.2': OIDEntry('biometricDNA', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.3':
      OIDEntry('biometricEarShape', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.4':
      OIDEntry('biometricFacialFeatures', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.5':
      OIDEntry('biometricFingerImage', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.6':
      OIDEntry('biometricFingerGeometry', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.7':
      OIDEntry('biometricHandGeometry', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.8':
      OIDEntry('biometricIrisFeatures', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.9':
      OIDEntry('biometricKeystrokeDynamics', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.10':
      OIDEntry('biometricPalm', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.11':
      OIDEntry('biometricRetina', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.12':
      OIDEntry('biometricSignature', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.13':
      OIDEntry('biometricSpeechPattern', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.14':
      OIDEntry('biometricThermalImage', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.15':
      OIDEntry('biometricVeinPattern', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.16':
      OIDEntry('biometricThermalFaceImage', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.17':
      OIDEntry('biometricThermalHandImage', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.18':
      OIDEntry('biometricLipMovement', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.1.19':
      OIDEntry('biometricGait', 'X9.84 Biometric', false),
  '1.3.133.16.840.9.84.3': OIDEntry('x984MatchingMethod', 'X9.84', false),
  '1.3.133.16.840.9.84.4': OIDEntry('x984FormatOwner', 'X9.84', false),
  '1.3.133.16.840.9.84.4.0':
      OIDEntry('x984CbeffOwner', 'X9.84 Format Owner', false),
  '1.3.133.16.840.9.84.4.1':
      OIDEntry('x984IbiaOwner', 'X9.84 Format Owner', false),
  '1.3.133.16.840.9.84.4.1.1':
      OIDEntry('ibiaOwnerSAFLINK', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.2':
      OIDEntry('ibiaOwnerBioscrypt', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.3':
      OIDEntry('ibiaOwnerVisionics', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.4': OIDEntry(
      'ibiaOwnerInfineonTechnologiesAG', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.5': OIDEntry(
      'ibiaOwnerIridianTechnologies', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.6':
      OIDEntry('ibiaOwnerVeridicom', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.7':
      OIDEntry('ibiaOwnerCyberSIGN', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.8':
      OIDEntry('ibiaOwnereCryp', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.9':
      OIDEntry('ibiaOwnerFingerprintCardsAB', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.10':
      OIDEntry('ibiaOwnerSecuGen', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.11':
      OIDEntry('ibiaOwnerPreciseBiometric', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.12':
      OIDEntry('ibiaOwnerIdentix', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.13':
      OIDEntry('ibiaOwnerDERMALOG', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.14':
      OIDEntry('ibiaOwnerLOGICO', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.15':
      OIDEntry('ibiaOwnerNIST', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.16':
      OIDEntry('ibiaOwnerA3Vision', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.17':
      OIDEntry('ibiaOwnerNEC', 'X9.84 IBIA Format Owner', false),
  '1.3.133.16.840.9.84.4.1.18':
      OIDEntry('ibiaOwnerSTMicroelectronics', 'X9.84 IBIA Format Owner', false),
  '2.5.4.0': OIDEntry('objectClass', 'X.520 DN component', false),
  '2.5.4.1': OIDEntry('aliasedEntryName', 'X.520 DN component', false),
  '2.5.4.2': OIDEntry('knowledgeInformation', 'X.520 DN component', false),
  '2.5.4.3': OIDEntry('commonName', 'X.520 DN component', false),
  '2.5.4.4': OIDEntry('surname', 'X.520 DN component', false),
  '2.5.4.5': OIDEntry('serialNumber', 'X.520 DN component', false),
  '2.5.4.6': OIDEntry('countryName', 'X.520 DN component', false),
  '2.5.4.7': OIDEntry('localityName', 'X.520 DN component', false),
  '2.5.4.7.1': OIDEntry('collectiveLocalityName', 'X.520 DN component', false),
  '2.5.4.8': OIDEntry('stateOrProvinceName', 'X.520 DN component', false),
  '2.5.4.8.1':
      OIDEntry('collectiveStateOrProvinceName', 'X.520 DN component', false),
  '2.5.4.9': OIDEntry('streetAddress', 'X.520 DN component', false),
  '2.5.4.9.1': OIDEntry('collectiveStreetAddress', 'X.520 DN component', false),
  '2.5.4.10': OIDEntry('organizationName', 'X.520 DN component', false),
  '2.5.4.10.1':
      OIDEntry('collectiveOrganizationName', 'X.520 DN component', false),
  '2.5.4.11': OIDEntry('organizationalUnitName', 'X.520 DN component', false),
  '2.5.4.11.1':
      OIDEntry('collectiveOrganizationalUnitName', 'X.520 DN component', false),
  '2.5.4.12': OIDEntry('title', 'X.520 DN component', false),
  '2.5.4.13': OIDEntry('description', 'X.520 DN component', false),
  '2.5.4.14': OIDEntry('searchGuide', 'X.520 DN component', false),
  '2.5.4.15': OIDEntry('businessCategory', 'X.520 DN component', false),
  '2.5.4.16': OIDEntry('postalAddress', 'X.520 DN component', false),
  '2.5.4.16.1':
      OIDEntry('collectivePostalAddress', 'X.520 DN component', false),
  '2.5.4.17': OIDEntry('postalCode', 'X.520 DN component', false),
  '2.5.4.17.1': OIDEntry('collectivePostalCode', 'X.520 DN component', false),
  '2.5.4.18': OIDEntry('postOfficeBox', 'X.520 DN component', false),
  '2.5.4.18.1':
      OIDEntry('collectivePostOfficeBox', 'X.520 DN component', false),
  '2.5.4.19':
      OIDEntry('physicalDeliveryOfficeName', 'X.520 DN component', false),
  '2.5.4.19.1': OIDEntry(
      'collectivePhysicalDeliveryOfficeName', 'X.520 DN component', false),
  '2.5.4.20': OIDEntry('telephoneNumber', 'X.520 DN component', false),
  '2.5.4.20.1':
      OIDEntry('collectiveTelephoneNumber', 'X.520 DN component', false),
  '2.5.4.21': OIDEntry('telexNumber', 'X.520 DN component', false),
  '2.5.4.21.1': OIDEntry('collectiveTelexNumber', 'X.520 DN component', false),
  '2.5.4.22':
      OIDEntry('teletexTerminalIdentifier', 'X.520 DN component', false),
  '2.5.4.22.1': OIDEntry(
      'collectiveTeletexTerminalIdentifier', 'X.520 DN component', false),
  '2.5.4.23': OIDEntry('facsimileTelephoneNumber', 'X.520 DN component', false),
  '2.5.4.23.1': OIDEntry(
      'collectiveFacsimileTelephoneNumber', 'X.520 DN component', false),
  '2.5.4.24': OIDEntry('x121Address', 'X.520 DN component', false),
  '2.5.4.25': OIDEntry('internationalISDNNumber', 'X.520 DN component', false),
  '2.5.4.25.1': OIDEntry(
      'collectiveInternationalISDNNumber', 'X.520 DN component', false),
  '2.5.4.26': OIDEntry('registeredAddress', 'X.520 DN component', false),
  '2.5.4.27': OIDEntry('destinationIndicator', 'X.520 DN component', false),
  '2.5.4.28': OIDEntry('preferredDeliveryMehtod', 'X.520 DN component', false),
  '2.5.4.29': OIDEntry('presentationAddress', 'X.520 DN component', false),
  '2.5.4.30':
      OIDEntry('supportedApplicationContext', 'X.520 DN component', false),
  '2.5.4.31': OIDEntry('member', 'X.520 DN component', false),
  '2.5.4.32': OIDEntry('owner', 'X.520 DN component', false),
  '2.5.4.33': OIDEntry('roleOccupant', 'X.520 DN component', false),
  '2.5.4.34': OIDEntry('seeAlso', 'X.520 DN component', false),
  '2.5.4.35': OIDEntry('userPassword', 'X.520 DN component', false),
  '2.5.4.36': OIDEntry('userCertificate', 'X.520 DN component', false),
  '2.5.4.37': OIDEntry('caCertificate', 'X.520 DN component', false),
  '2.5.4.38': OIDEntry('authorityRevocationList', 'X.520 DN component', false),
  '2.5.4.39':
      OIDEntry('certificateRevocationList', 'X.520 DN component', false),
  '2.5.4.40': OIDEntry('crossCertificatePair', 'X.520 DN component', false),
  '2.5.4.41': OIDEntry('name', 'X.520 DN component', false),
  '2.5.4.42': OIDEntry('givenName', 'X.520 DN component', false),
  '2.5.4.43': OIDEntry('initials', 'X.520 DN component', false),
  '2.5.4.44': OIDEntry('generationQualifier', 'X.520 DN component', false),
  '2.5.4.45': OIDEntry('uniqueIdentifier', 'X.520 DN component', false),
  '2.5.4.46': OIDEntry('dnQualifier', 'X.520 DN component', false),
  '2.5.4.47': OIDEntry('enhancedSearchGuide', 'X.520 DN component', false),
  '2.5.4.48': OIDEntry('protocolInformation', 'X.520 DN component', false),
  '2.5.4.49': OIDEntry('distinguishedName', 'X.520 DN component', false),
  '2.5.4.50': OIDEntry('uniqueMember', 'X.520 DN component', false),
  '2.5.4.51': OIDEntry('houseIdentifier', 'X.520 DN component', false),
  '2.5.4.52': OIDEntry('supportedAlgorithms', 'X.520 DN component', false),
  '2.5.4.53': OIDEntry('deltaRevocationList', 'X.520 DN component', false),
  '2.5.4.54': OIDEntry('dmdName', 'X.520 DN component', false),
  '2.5.4.55': OIDEntry('clearance', 'X.520 DN component', false),
  '2.5.4.56': OIDEntry('defaultDirQop', 'X.520 DN component', false),
  '2.5.4.57': OIDEntry('attributeIntegrityInfo', 'X.520 DN component', false),
  '2.5.4.58': OIDEntry('attributeCertificate', 'X.520 DN component', false),
  '2.5.4.59': OIDEntry(
      'attributeCertificateRevocationList', 'X.520 DN component', false),
  '2.5.4.60': OIDEntry('confKeyInfo', 'X.520 DN component', false),
  '2.5.4.61': OIDEntry('aACertificate', 'X.520 DN component', false),
  '2.5.4.62':
      OIDEntry('attributeDescriptorCertificate', 'X.520 DN component', false),
  '2.5.4.63':
      OIDEntry('attributeAuthorityRevocationList', 'X.520 DN component', false),
  '2.5.4.64': OIDEntry('familyInformation', 'X.520 DN component', false),
  '2.5.4.65': OIDEntry('pseudonym', 'X.520 DN component', false),
  '2.5.4.66': OIDEntry('communicationsService', 'X.520 DN component', false),
  '2.5.4.67': OIDEntry('communicationsNetwork', 'X.520 DN component', false),
  '2.5.4.68':
      OIDEntry('certificationPracticeStmt', 'X.520 DN component', false),
  '2.5.4.69': OIDEntry('certificatePolicy', 'X.520 DN component', false),
  '2.5.4.70': OIDEntry('pkiPath', 'X.520 DN component', false),
  '2.5.4.71': OIDEntry('privPolicy', 'X.520 DN component', false),
  '2.5.4.72': OIDEntry('role', 'X.520 DN component', false),
  '2.5.4.73': OIDEntry('delegationPath', 'X.520 DN component', false),
  '2.5.4.74': OIDEntry('protPrivPolicy', 'X.520 DN component', false),
  '2.5.4.75': OIDEntry('xMLPrivilegeInfo', 'X.520 DN component', false),
  '2.5.4.76': OIDEntry('xmlPrivPolicy', 'X.520 DN component', false),
  '2.5.4.82': OIDEntry('permission', 'X.520 DN component', false),
  '2.5.6.0': OIDEntry('top', 'X.520 objectClass', false),
  '2.5.6.1': OIDEntry('alias', 'X.520 objectClass', false),
  '2.5.6.2': OIDEntry('country', 'X.520 objectClass', false),
  '2.5.6.3': OIDEntry('locality', 'X.520 objectClass', false),
  '2.5.6.4': OIDEntry('organization', 'X.520 objectClass', false),
  '2.5.6.5': OIDEntry('organizationalUnit', 'X.520 objectClass', false),
  '2.5.6.6': OIDEntry('person', 'X.520 objectClass', false),
  '2.5.6.7': OIDEntry('organizationalPerson', 'X.520 objectClass', false),
  '2.5.6.8': OIDEntry('organizationalRole', 'X.520 objectClass', false),
  '2.5.6.9': OIDEntry('groupOfNames', 'X.520 objectClass', false),
  '2.5.6.10': OIDEntry('residentialPerson', 'X.520 objectClass', false),
  '2.5.6.11': OIDEntry('applicationProcess', 'X.520 objectClass', false),
  '2.5.6.12': OIDEntry('applicationEntity', 'X.520 objectClass', false),
  '2.5.6.13': OIDEntry('dSA', 'X.520 objectClass', false),
  '2.5.6.14': OIDEntry('device', 'X.520 objectClass', false),
  '2.5.6.15': OIDEntry('strongAuthenticationUser', 'X.520 objectClass', false),
  '2.5.6.16': OIDEntry('certificateAuthority', 'X.520 objectClass', false),
  '2.5.6.17': OIDEntry('groupOfUniqueNames', 'X.520 objectClass', false),
  '2.5.6.21': OIDEntry('pkiUser', 'X.520 objectClass', false),
  '2.5.6.22': OIDEntry('pkiCA', 'X.520 objectClass', false),
  '2.5.8.1.1': OIDEntry('rsa',
      'X.500 algorithms.  Ambiguous, since no padding rules specified', true),
  '2.5.29.1': OIDEntry('authorityKeyIdentifier',
      'X.509 extension.  Deprecated, use 2 5 29 35 instead', true),
  '2.5.29.2': OIDEntry('keyAttributes',
      'X.509 extension.  Obsolete, use keyUsage/extKeyUsage instead', true),
  '2.5.29.3': OIDEntry('certificatePolicies',
      'X.509 extension.  Deprecated, use 2 5 29 32 instead', true),
  '2.5.29.4': OIDEntry('keyUsageRestriction',
      'X.509 extension.  Obsolete, use keyUsage/extKeyUsage instead', true),
  '2.5.29.5': OIDEntry('policyMapping',
      'X.509 extension.  Deprecated, use 2 5 29 33 instead', true),
  '2.5.29.6': OIDEntry('subtreesConstraint',
      'X.509 extension.  Obsolete, use nameConstraints instead', true),
  '2.5.29.7': OIDEntry('subjectAltName',
      'X.509 extension.  Deprecated, use 2 5 29 17 instead', true),
  '2.5.29.8': OIDEntry('issuerAltName',
      'X.509 extension.  Deprecated, use 2 5 29 18 instead', true),
  '2.5.29.9': OIDEntry('subjectDirectoryAttributes', 'X.509 extension', false),
  '2.5.29.10': OIDEntry('basicConstraints',
      'X.509 extension.  Deprecated, use 2 5 29 19 instead', true),
  '2.5.29.11': OIDEntry('nameConstraints',
      'X.509 extension.  Deprecated, use 2 5 29 30 instead', true),
  '2.5.29.12': OIDEntry('policyConstraints',
      'X.509 extension.  Deprecated, use 2 5 29 36 instead', true),
  '2.5.29.13': OIDEntry('basicConstraints',
      'X.509 extension.  Deprecated, use 2 5 29 19 instead', true),
  '2.5.29.14': OIDEntry('subjectKeyIdentifier', 'X.509 extension', false),
  '2.5.29.15': OIDEntry('keyUsage', 'X.509 extension', false),
  '2.5.29.16': OIDEntry('privateKeyUsagePeriod', 'X.509 extension', false),
  '2.5.29.17': OIDEntry('subjectAltName', 'X.509 extension', false),
  '2.5.29.18': OIDEntry('issuerAltName', 'X.509 extension', false),
  '2.5.29.19': OIDEntry('basicConstraints', 'X.509 extension', false),
  '2.5.29.20': OIDEntry('cRLNumber', 'X.509 extension', false),
  '2.5.29.21': OIDEntry('cRLReason', 'X.509 extension', false),
  '2.5.29.22': OIDEntry('expirationDate',
      'X.509 extension.  Deprecated, alternative OID uncertain', true),
  '2.5.29.23': OIDEntry('instructionCode', 'X.509 extension', false),
  '2.5.29.24': OIDEntry('invalidityDate', 'X.509 extension', false),
  '2.5.29.25': OIDEntry('cRLDistributionPoints',
      'X.509 extension.  Deprecated, use 2 5 29 31 instead', true),
  '2.5.29.26': OIDEntry('issuingDistributionPoint',
      'X.509 extension.  Deprecated, use 2 5 29 28 instead', true),
  '2.5.29.27': OIDEntry('deltaCRLIndicator', 'X.509 extension', false),
  '2.5.29.28': OIDEntry('issuingDistributionPoint', 'X.509 extension', false),
  '2.5.29.29': OIDEntry('certificateIssuer', 'X.509 extension', false),
  '2.5.29.30': OIDEntry('nameConstraints', 'X.509 extension', false),
  '2.5.29.31': OIDEntry('cRLDistributionPoints', 'X.509 extension', false),
  '2.5.29.32': OIDEntry('certificatePolicies', 'X.509 extension', false),
  '2.5.29.32.0': OIDEntry('anyPolicy', 'X.509 certificate policy', false),
  '2.5.29.33': OIDEntry('policyMappings', 'X.509 extension', false),
  '2.5.29.34': OIDEntry('policyConstraints',
      'X.509 extension.  Deprecated, use 2 5 29 36 instead', true),
  '2.5.29.35': OIDEntry('authorityKeyIdentifier', 'X.509 extension', false),
  '2.5.29.36': OIDEntry('policyConstraints', 'X.509 extension', false),
  '2.5.29.37': OIDEntry('extKeyUsage', 'X.509 extension', false),
  '2.5.29.37.0':
      OIDEntry('anyExtendedKeyUsage', 'X.509 extended key usage', false),
  '2.5.29.38':
      OIDEntry('authorityAttributeIdentifier', 'X.509 extension', false),
  '2.5.29.39': OIDEntry('roleSpecCertIdentifier', 'X.509 extension', false),
  '2.5.29.40': OIDEntry('cRLStreamIdentifier', 'X.509 extension', false),
  '2.5.29.41': OIDEntry('basicAttConstraints', 'X.509 extension', false),
  '2.5.29.42': OIDEntry('delegatedNameConstraints', 'X.509 extension', false),
  '2.5.29.43': OIDEntry('timeSpecification', 'X.509 extension', false),
  '2.5.29.44': OIDEntry('cRLScope', 'X.509 extension', false),
  '2.5.29.45': OIDEntry('statusReferrals', 'X.509 extension', false),
  '2.5.29.46': OIDEntry('freshestCRL', 'X.509 extension', false),
  '2.5.29.47': OIDEntry('orderedList', 'X.509 extension', false),
  '2.5.29.48': OIDEntry('attributeDescriptor', 'X.509 extension', false),
  '2.5.29.49': OIDEntry('userNotice', 'X.509 extension', false),
  '2.5.29.50': OIDEntry('sOAIdentifier', 'X.509 extension', false),
  '2.5.29.51': OIDEntry('baseUpdateTime', 'X.509 extension', false),
  '2.5.29.52': OIDEntry('acceptableCertPolicies', 'X.509 extension', false),
  '2.5.29.53': OIDEntry('deltaInfo', 'X.509 extension', false),
  '2.5.29.54': OIDEntry('inhibitAnyPolicy', 'X.509 extension', false),
  '2.5.29.55': OIDEntry('targetInformation', 'X.509 extension', false),
  '2.5.29.56': OIDEntry('noRevAvail', 'X.509 extension', false),
  '2.5.29.57':
      OIDEntry('acceptablePrivilegePolicies', 'X.509 extension', false),
  '2.5.29.58': OIDEntry('toBeRevoked', 'X.509 extension', false),
  '2.5.29.59': OIDEntry('revokedGroups', 'X.509 extension', false),
  '2.5.29.60': OIDEntry('expiredCertsOnCRL', 'X.509 extension', false),
  '2.5.29.61': OIDEntry('indirectIssuer', 'X.509 extension', false),
  '2.5.29.62': OIDEntry('noAssertion', 'X.509 extension', false),
  '2.5.29.63': OIDEntry('aAissuingDistributionPoint', 'X.509 extension', false),
  '2.5.29.64': OIDEntry('issuedOnBehalfOf', 'X.509 extension', false),
  '2.5.29.65': OIDEntry('singleUse', 'X.509 extension', false),
  '2.5.29.66': OIDEntry('groupAC', 'X.509 extension', false),
  '2.5.29.67': OIDEntry('allowedAttAss', 'X.509 extension', false),
  '2.5.29.68': OIDEntry('attributeMappings', 'X.509 extension', false),
  '2.5.29.69': OIDEntry('holderNameConstraints', 'X.509 extension', false),
  '2.16.724.1.2.2.4.1':
      OIDEntry('personalDataInfo', 'Spanish Government PKI?', false),
  '2.16.840.1.101.2.1.1.1':
      OIDEntry('sdnsSignatureAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.2': OIDEntry(
      'fortezzaSignatureAlgorithm',
      'SDN.700 INFOSEC algorithms.  Formerly known as mosaicSignatureAlgorithm, this OID is better known as dsaWithSHA-1.',
      false),
  '2.16.840.1.101.2.1.1.3': OIDEntry(
      'sdnsConfidentialityAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.4': OIDEntry(
      'fortezzaConfidentialityAlgorithm',
      'SDN.700 INFOSEC algorithms.  Formerly known as mosaicConfidentialityAlgorithm',
      false),
  '2.16.840.1.101.2.1.1.5':
      OIDEntry('sdnsIntegrityAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.6': OIDEntry(
      'fortezzaIntegrityAlgorithm',
      'SDN.700 INFOSEC algorithms.  Formerly known as mosaicIntegrityAlgorithm',
      false),
  '2.16.840.1.101.2.1.1.7': OIDEntry(
      'sdnsTokenProtectionAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.8': OIDEntry(
      'fortezzaTokenProtectionAlgorithm',
      'SDN.700 INFOSEC algorithms.  Formerly know as mosaicTokenProtectionAlgorithm',
      false),
  '2.16.840.1.101.2.1.1.9': OIDEntry(
      'sdnsKeyManagementAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.10': OIDEntry(
      'fortezzaKeyManagementAlgorithm',
      'SDN.700 INFOSEC algorithms.  Formerly known as mosaicKeyManagementAlgorithm',
      false),
  '2.16.840.1.101.2.1.1.11':
      OIDEntry('sdnsKMandSigAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.12': OIDEntry(
      'fortezzaKMandSigAlgorithm',
      'SDN.700 INFOSEC algorithms.  Formerly known as mosaicKMandSigAlgorithm',
      false),
  '2.16.840.1.101.2.1.1.13':
      OIDEntry('suiteASignatureAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.14': OIDEntry(
      'suiteAConfidentialityAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.15':
      OIDEntry('suiteAIntegrityAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.16': OIDEntry(
      'suiteATokenProtectionAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.17': OIDEntry(
      'suiteAKeyManagementAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.18':
      OIDEntry('suiteAKMandSigAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.19': OIDEntry(
      'fortezzaUpdatedSigAlgorithm',
      'SDN.700 INFOSEC algorithms.  Formerly known as mosaicUpdatedSigAlgorithm',
      false),
  '2.16.840.1.101.2.1.1.20': OIDEntry(
      'fortezzaKMandUpdSigAlgorithms',
      'SDN.700 INFOSEC algorithms.  Formerly known as mosaicKMandUpdSigAlgorithms',
      false),
  '2.16.840.1.101.2.1.1.21': OIDEntry(
      'fortezzaUpdatedIntegAlgorithm',
      'SDN.700 INFOSEC algorithms.  Formerly known as mosaicUpdatedIntegAlgorithm',
      false),
  '2.16.840.1.101.2.1.1.22': OIDEntry(
      'keyExchangeAlgorithm',
      'SDN.700 INFOSEC algorithms.  Formerly known as mosaicKeyEncryptionAlgorithm',
      false),
  '2.16.840.1.101.2.1.1.23':
      OIDEntry('fortezzaWrap80Algorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.1.24': OIDEntry(
      'kEAKeyEncryptionAlgorithm', 'SDN.700 INFOSEC algorithms', false),
  '2.16.840.1.101.2.1.2.1':
      OIDEntry('rfc822MessageFormat', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.2':
      OIDEntry('emptyContent', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.3':
      OIDEntry('cspContentType', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.42':
      OIDEntry('mspRev3ContentType', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.48':
      OIDEntry('mspContentType', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.49':
      OIDEntry('mspRekeyAgentProtocol', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.50':
      OIDEntry('mspMMP', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.66':
      OIDEntry('mspRev3-1ContentType', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.72':
      OIDEntry('forwardedMSPMessageBodyPart', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.73': OIDEntry(
      'mspForwardedMessageParameters', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.74':
      OIDEntry('forwardedCSPMsgBodyPart', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.75': OIDEntry(
      'cspForwardedMessageParameters', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.76':
      OIDEntry('mspMMP2', 'SDN.700 INFOSEC format', false),
  '2.16.840.1.101.2.1.2.78.2': OIDEntry(
      'encryptedKeyPackage', 'SDN.700 INFOSEC format and RFC 6032', false),
  '2.16.840.1.101.2.1.2.78.3': OIDEntry(
      'keyPackageReceipt', 'SDN.700 INFOSEC format and RFC 7191', false),
  '2.16.840.1.101.2.1.2.78.6':
      OIDEntry('keyPackageError', 'SDN.700 INFOSEC format and RFC 7191', false),
  '2.16.840.1.101.2.1.3.1':
      OIDEntry('sdnsSecurityPolicy', 'SDN.700 INFOSEC policy', false),
  '2.16.840.1.101.2.1.3.2':
      OIDEntry('sdnsPRBAC', 'SDN.700 INFOSEC policy', false),
  '2.16.840.1.101.2.1.3.3':
      OIDEntry('mosaicPRBAC', 'SDN.700 INFOSEC policy', false),
  '2.16.840.1.101.2.1.3.10':
      OIDEntry('siSecurityPolicy', 'SDN.700 INFOSEC policy', false),
  '2.16.840.1.101.2.1.3.10.0':
      OIDEntry('siNASP', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.1':
      OIDEntry('siELCO', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.2':
      OIDEntry('siTK', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.3':
      OIDEntry('siDSAP', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.4':
      OIDEntry('siSSSS', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.5':
      OIDEntry('siDNASP', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.6':
      OIDEntry('siBYEMAN', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.7':
      OIDEntry('siREL-US', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.8':
      OIDEntry('siREL-AUS', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.9':
      OIDEntry('siREL-CAN', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.10':
      OIDEntry('siREL_UK', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.11':
      OIDEntry('siREL-NZ', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.10.12':
      OIDEntry('siGeneric', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.11':
      OIDEntry('genser', 'SDN.700 INFOSEC policy', false),
  '2.16.840.1.101.2.1.3.11.0':
      OIDEntry('genserNations', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.11.1':
      OIDEntry('genserComsec', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.11.2':
      OIDEntry('genserAcquisition', 'SDN.700 INFOSEC policy (obsolete)', true),
  '2.16.840.1.101.2.1.3.11.3':
      OIDEntry('genserSecurityCategories', 'SDN.700 INFOSEC policy', false),
  '2.16.840.1.101.2.1.3.11.3.0':
      OIDEntry('genserTagSetName', 'SDN.700 INFOSEC GENSER policy', false),
  '2.16.840.1.101.2.1.3.12':
      OIDEntry('defaultSecurityPolicy', 'SDN.700 INFOSEC policy', false),
  '2.16.840.1.101.2.1.3.13':
      OIDEntry('capcoMarkings', 'SDN.700 INFOSEC policy', false),
  '2.16.840.1.101.2.1.3.13.0': OIDEntry('capcoSecurityCategories',
      'SDN.700 INFOSEC policy CAPCO markings', false),
  '2.16.840.1.101.2.1.3.13.0.1': OIDEntry(
      'capcoTagSetName1', 'SDN.700 INFOSEC policy CAPCO markings', false),
  '2.16.840.1.101.2.1.3.13.0.2': OIDEntry(
      'capcoTagSetName2', 'SDN.700 INFOSEC policy CAPCO markings', false),
  '2.16.840.1.101.2.1.3.13.0.3': OIDEntry(
      'capcoTagSetName3', 'SDN.700 INFOSEC policy CAPCO markings', false),
  '2.16.840.1.101.2.1.3.13.0.4': OIDEntry(
      'capcoTagSetName4', 'SDN.700 INFOSEC policy CAPCO markings', false),
  '2.16.840.1.101.2.1.5.1': OIDEntry('sdnsKeyManagementCertificate',
      'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.2': OIDEntry('sdnsUserSignatureCertificate',
      'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.3': OIDEntry('sdnsKMandSigCertificate',
      'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.4': OIDEntry('fortezzaKeyManagementCertificate',
      'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.5': OIDEntry('fortezzaKMandSigCertificate',
      'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.6': OIDEntry('fortezzaUserSignatureCertificate',
      'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.7': OIDEntry('fortezzaCASignatureCertificate',
      'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.8': OIDEntry('sdnsCASignatureCertificate',
      'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.10': OIDEntry(
      'auxiliaryVector', 'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.11':
      OIDEntry('mlReceiptPolicy', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.12':
      OIDEntry('mlMembership', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.13':
      OIDEntry('mlAdministrators', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.14':
      OIDEntry('alid', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.20':
      OIDEntry('janUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.21':
      OIDEntry('febUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.22':
      OIDEntry('marUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.23':
      OIDEntry('aprUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.24':
      OIDEntry('mayUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.25':
      OIDEntry('junUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.26':
      OIDEntry('julUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.27':
      OIDEntry('augUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.28':
      OIDEntry('sepUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.29':
      OIDEntry('octUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.30':
      OIDEntry('novUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.31':
      OIDEntry('decUKMs', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.40':
      OIDEntry('metaSDNSckl', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.41':
      OIDEntry('sdnsCKL', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.42':
      OIDEntry('metaSDNSsignatureCKL', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.43':
      OIDEntry('sdnsSignatureCKL', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.44': OIDEntry(
      'sdnsCertificateRevocationList', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.45': OIDEntry('fortezzaCertificateRevocationList',
      'SDN.700 INFOSEC attributes (superseded)', true),
  '2.16.840.1.101.2.1.5.46':
      OIDEntry('fortezzaCKL', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.47': OIDEntry(
      'alExemptedAddressProcessor', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.48':
      OIDEntry('guard', 'SDN.700 INFOSEC attributes (obsolete)', true),
  '2.16.840.1.101.2.1.5.49': OIDEntry(
      'algorithmsSupported', 'SDN.700 INFOSEC attributes (obsolete)', true),
  '2.16.840.1.101.2.1.5.50': OIDEntry('suiteAKeyManagementCertificate',
      'SDN.700 INFOSEC attributes (obsolete)', true),
  '2.16.840.1.101.2.1.5.51': OIDEntry('suiteAKMandSigCertificate',
      'SDN.700 INFOSEC attributes (obsolete)', true),
  '2.16.840.1.101.2.1.5.52': OIDEntry('suiteAUserSignatureCertificate',
      'SDN.700 INFOSEC attributes (obsolete)', true),
  '2.16.840.1.101.2.1.5.53':
      OIDEntry('prbacInfo', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.54':
      OIDEntry('prbacCAConstraints', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.55':
      OIDEntry('sigOrKMPrivileges', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.56':
      OIDEntry('commPrivileges', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.57':
      OIDEntry('labeledAttribute', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.58': OIDEntry(
      'policyInformationFile', 'SDN.700 INFOSEC attributes (obsolete)', true),
  '2.16.840.1.101.2.1.5.59':
      OIDEntry('secPolicyInformationFile', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.60':
      OIDEntry('cAClearanceConstraint', 'SDN.700 INFOSEC attributes', false),
  '2.16.840.1.101.2.1.5.65': OIDEntry('keyPkgIdAndReceiptReq',
      'SDN.700 INFOSEC attributes and RFC 7191', false),
  '2.16.840.1.101.2.1.5.66': OIDEntry(
      'contentDecryptKeyID', 'SDN.700 INFOSEC attributes and RFC 6032', false),
  '2.16.840.1.101.2.1.5.70': OIDEntry(
      'kpCrlPointers', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.5.71': OIDEntry(
      'kpKeyProvinceV2', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.5.72':
      OIDEntry('kpManifest', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.7.1':
      OIDEntry('cspExtns', 'SDN.700 INFOSEC extensions', false),
  '2.16.840.1.101.2.1.7.1.0':
      OIDEntry('cspCsExtn', 'SDN.700 INFOSEC extensions', false),
  '2.16.840.1.101.2.1.8.1': OIDEntry(
      'mISSISecurityCategories', 'SDN.700 INFOSEC security category', false),
  '2.16.840.1.101.2.1.8.2': OIDEntry('standardSecurityLabelPrivileges',
      'SDN.700 INFOSEC security category', false),
  '2.16.840.1.101.2.1.8.3.1': OIDEntry('enumeratedPermissiveAttrs',
      'SDN.700 INFOSEC security category from RFC 7906', false),
  '2.16.840.1.101.2.1.8.3.3': OIDEntry('informativeAttrs',
      'SDN.700 INFOSEC security category from RFC 7906', false),
  '2.16.840.1.101.2.1.8.3.4': OIDEntry('enumeratedRestrictiveAttrs',
      'SDN.700 INFOSEC security category from RFC 7906', false),
  '2.16.840.1.101.2.1.10.1':
      OIDEntry('sigPrivileges', 'SDN.700 INFOSEC privileges', false),
  '2.16.840.1.101.2.1.10.2':
      OIDEntry('kmPrivileges', 'SDN.700 INFOSEC privileges', false),
  '2.16.840.1.101.2.1.10.3':
      OIDEntry('namedTagSetPrivilege', 'SDN.700 INFOSEC privileges', false),
  '2.16.840.1.101.2.1.11.1':
      OIDEntry('ukDemo', 'SDN.700 INFOSEC certificate policy', false),
  '2.16.840.1.101.2.1.11.2':
      OIDEntry('usDODClass2', 'SDN.700 INFOSEC certificate policy', false),
  '2.16.840.1.101.2.1.11.3':
      OIDEntry('usMediumPilot', 'SDN.700 INFOSEC certificate policy', false),
  '2.16.840.1.101.2.1.11.4':
      OIDEntry('usDODClass4', 'SDN.700 INFOSEC certificate policy', false),
  '2.16.840.1.101.2.1.11.5':
      OIDEntry('usDODClass3', 'SDN.700 INFOSEC certificate policy', false),
  '2.16.840.1.101.2.1.11.6':
      OIDEntry('usDODClass5', 'SDN.700 INFOSEC certificate policy', false),
  '2.16.840.1.101.2.1.12.0':
      OIDEntry('testSecurityPolicy', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.1':
      OIDEntry('tsp1', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.1.0':
      OIDEntry('tsp1SecurityCategories', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.1.0.0':
      OIDEntry('tsp1TagSetZero', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.1.0.1':
      OIDEntry('tsp1TagSetOne', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.1.0.2':
      OIDEntry('tsp1TagSetTwo', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.2':
      OIDEntry('tsp2', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.2.0':
      OIDEntry('tsp2SecurityCategories', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.2.0.0':
      OIDEntry('tsp2TagSetZero', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.2.0.1':
      OIDEntry('tsp2TagSetOne', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.2.0.2':
      OIDEntry('tsp2TagSetTwo', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.3':
      OIDEntry('kafka', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.3.0': OIDEntry(
      'kafkaSecurityCategories', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.3.0.1':
      OIDEntry('kafkaTagSetName1', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.3.0.2':
      OIDEntry('kafkaTagSetName2', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.0.3.0.3':
      OIDEntry('kafkaTagSetName3', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.12.1.1':
      OIDEntry('tcp1', 'SDN.700 INFOSEC test objects', false),
  '2.16.840.1.101.2.1.13.1': OIDEntry(
      'kmaKeyAlgorithm', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.3': OIDEntry(
      'kmaTSECNomenclature', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.5': OIDEntry(
      'kmaKeyDistPeriod', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.6': OIDEntry(
      'kmaKeyValidityPeriod', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.7': OIDEntry(
      'kmaKeyDuration', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.11':
      OIDEntry('kmaSplitID', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.12': OIDEntry(
      'kmaKeyPkgType', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.13': OIDEntry(
      'kmaKeyPurpose', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.14':
      OIDEntry('kmaKeyUse', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.15': OIDEntry(
      'kmaTransportKey', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.16': OIDEntry(
      'kmaKeyPkgReceiversV2', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.19': OIDEntry(
      'kmaOtherCertFormats', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.20': OIDEntry(
      'kmaUsefulCerts', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.21': OIDEntry(
      'kmaKeyWrapAlgorithm', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.13.22': OIDEntry(
      'kmaSigUsageV3', 'SDN.700 INFOSEC attributes and RFC 7906', false),
  '2.16.840.1.101.2.1.16.0':
      OIDEntry('dn', 'SDN.700 INFOSEC attributes and RFC 7191', false),
  '2.16.840.1.101.2.1.22':
      OIDEntry('errorCodes', 'RFC 7906 key attribute error codes', false),
  '2.16.840.1.101.2.1.22.1':
      OIDEntry('missingKeyType', 'RFC 7906 key attribute error codes', false),
  '2.16.840.1.101.2.1.22.2': OIDEntry(
      'privacyMarkTooLong', 'RFC 7906 key attribute error codes', false),
  '2.16.840.1.101.2.1.22.3': OIDEntry('unrecognizedSecurityPolicy',
      'RFC 7906 key attribute error codes', false),
  '2.16.840.1.101.3.1': OIDEntry('slabel', 'CSOR GAK', true),
  '2.16.840.1.101.3.2': OIDEntry('pki', 'NIST', true),
  '2.16.840.1.101.3.2.1':
      OIDEntry('NIST policyIdentifier', 'NIST policies', true),
  '2.16.840.1.101.3.2.1.3.1':
      OIDEntry('fbcaRudimentaryPolicy', 'Federal Bridge CA Policy', false),
  '2.16.840.1.101.3.2.1.3.2':
      OIDEntry('fbcaBasicPolicy', 'Federal Bridge CA Policy', false),
  '2.16.840.1.101.3.2.1.3.3':
      OIDEntry('fbcaMediumPolicy', 'Federal Bridge CA Policy', false),
  '2.16.840.1.101.3.2.1.3.4':
      OIDEntry('fbcaHighPolicy', 'Federal Bridge CA Policy', false),
  '2.16.840.1.101.3.2.1.48.1':
      OIDEntry('nistTestPolicy1', 'NIST PKITS policies', false),
  '2.16.840.1.101.3.2.1.48.2':
      OIDEntry('nistTestPolicy2', 'NIST PKITS policies', false),
  '2.16.840.1.101.3.2.1.48.3':
      OIDEntry('nistTestPolicy3', 'NIST PKITS policies', false),
  '2.16.840.1.101.3.2.1.48.4':
      OIDEntry('nistTestPolicy4', 'NIST PKITS policies', false),
  '2.16.840.1.101.3.2.1.48.5':
      OIDEntry('nistTestPolicy5', 'NIST PKITS policies', false),
  '2.16.840.1.101.3.2.1.48.6':
      OIDEntry('nistTestPolicy6', 'NIST PKITS policies', false),
  '2.16.840.1.101.3.2.2': OIDEntry('gak', 'CSOR GAK extended key usage', true),
  '2.16.840.1.101.3.2.2.1':
      OIDEntry('kRAKey', 'CSOR GAK extended key usage', true),
  '2.16.840.1.101.3.2.3': OIDEntry('extensions', 'CSOR GAK extensions', true),
  '2.16.840.1.101.3.2.3.1':
      OIDEntry('kRTechnique', 'CSOR GAK extensions', true),
  '2.16.840.1.101.3.2.3.2':
      OIDEntry('kRecoveryCapable', 'CSOR GAK extensions', true),
  '2.16.840.1.101.3.2.3.3': OIDEntry('kR', 'CSOR GAK extensions', true),
  '2.16.840.1.101.3.2.4': OIDEntry('keyRecoverySchemes', 'CSOR GAK', true),
  '2.16.840.1.101.3.2.5': OIDEntry('krapola', 'CSOR GAK', true),
  '2.16.840.1.101.3.3': OIDEntry('arpa', 'CSOR GAK', true),
  '2.16.840.1.101.3.4': OIDEntry('nistAlgorithm', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1': OIDEntry('aes', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.1': OIDEntry('aes128-ECB', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.2': OIDEntry('aes128-CBC', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.3': OIDEntry('aes128-OFB', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.4': OIDEntry('aes128-CFB', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.5': OIDEntry('aes128-wrap', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.6': OIDEntry('aes128-GCM', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.7': OIDEntry('aes128-CCM', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.8':
      OIDEntry('aes128-wrap-pad', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.21': OIDEntry('aes192-ECB', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.22': OIDEntry('aes192-CBC', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.23': OIDEntry('aes192-OFB', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.24': OIDEntry('aes192-CFB', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.25': OIDEntry('aes192-wrap', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.26': OIDEntry('aes192-GCM', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.27': OIDEntry('aes192-CCM', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.28':
      OIDEntry('aes192-wrap-pad', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.41': OIDEntry('aes256-ECB', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.42': OIDEntry('aes256-CBC', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.43': OIDEntry('aes256-OFB', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.44': OIDEntry('aes256-CFB', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.45': OIDEntry('aes256-wrap', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.46': OIDEntry('aes256-GCM', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.47': OIDEntry('aes256-CCM', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.1.48':
      OIDEntry('aes256-wrap-pad', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2': OIDEntry('hashAlgos', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.1': OIDEntry('sha-256', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.2': OIDEntry('sha-384', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.3': OIDEntry('sha-512', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.4': OIDEntry('sha-224', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.11': OIDEntry('shake128', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.12': OIDEntry('shake256', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.17': OIDEntry('shake128len', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.18': OIDEntry('shake256len', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.19': OIDEntry('kmacShake128', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.2.20': OIDEntry('kmacShake256', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.3.1': OIDEntry('dsaWithSha224', 'NIST Algorithm', false),
  '2.16.840.1.101.3.4.3.2': OIDEntry('dsaWithSha256', 'NIST Algorithm', false),
  '2.16.840.1.113719.1.2.8': OIDEntry('novellAlgorithm', 'Novell', false),
  '2.16.840.1.113719.1.2.8.22':
      OIDEntry('desCbcIV8', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.23':
      OIDEntry('desCbcPadIV8', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.24':
      OIDEntry('desEDE2CbcIV8', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.25':
      OIDEntry('desEDE2CbcPadIV8', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.26':
      OIDEntry('desEDE3CbcIV8', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.27':
      OIDEntry('desEDE3CbcPadIV8', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.28':
      OIDEntry('rc5CbcPad', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.29': OIDEntry(
      'md2WithRSAEncryptionBSafe1', 'Novell signature algorithm', false),
  '2.16.840.1.113719.1.2.8.30': OIDEntry(
      'md5WithRSAEncryptionBSafe1', 'Novell signature algorithm', false),
  '2.16.840.1.113719.1.2.8.31': OIDEntry(
      'sha1WithRSAEncryptionBSafe1', 'Novell signature algorithm', false),
  '2.16.840.1.113719.1.2.8.32':
      OIDEntry('lmDigest', 'Novell digest algorithm', false),
  '2.16.840.1.113719.1.2.8.40':
      OIDEntry('md2', 'Novell digest algorithm', false),
  '2.16.840.1.113719.1.2.8.50':
      OIDEntry('md5', 'Novell digest algorithm', false),
  '2.16.840.1.113719.1.2.8.51':
      OIDEntry('ikeHmacWithSHA1-RSA', 'Novell signature algorithm', false),
  '2.16.840.1.113719.1.2.8.52':
      OIDEntry('ikeHmacWithMD5-RSA', 'Novell signature algorithm', false),
  '2.16.840.1.113719.1.2.8.69':
      OIDEntry('rc2CbcPad', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.82':
      OIDEntry('sha-1', 'Novell digest algorithm', false),
  '2.16.840.1.113719.1.2.8.92':
      OIDEntry('rc2BSafe1Cbc', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.95':
      OIDEntry('md4', 'Novell digest algorithm', false),
  '2.16.840.1.113719.1.2.8.130':
      OIDEntry('md4Packet', 'Novell keyed hash', false),
  '2.16.840.1.113719.1.2.8.131':
      OIDEntry('rsaEncryptionBsafe1', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.132':
      OIDEntry('nwPassword', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.2.8.133':
      OIDEntry('novellObfuscate-1', 'Novell encryption algorithm', false),
  '2.16.840.1.113719.1.9': OIDEntry('pki', 'Novell', false),
  '2.16.840.1.113719.1.9.4': OIDEntry('pkiAttributeType', 'Novell PKI', false),
  '2.16.840.1.113719.1.9.4.1':
      OIDEntry('securityAttributes', 'Novell PKI attribute type', false),
  '2.16.840.1.113719.1.9.4.2':
      OIDEntry('relianceLimit', 'Novell PKI attribute type', false),
  '2.16.840.1.113730.1': OIDEntry('cert-extension', 'Netscape', false),
  '2.16.840.1.113730.1.1':
      OIDEntry('netscape-cert-type', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.2':
      OIDEntry('netscape-base-url', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.3': OIDEntry(
      'netscape-revocation-url', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.4': OIDEntry(
      'netscape-ca-revocation-url', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.7': OIDEntry(
      'netscape-cert-renewal-url', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.8': OIDEntry(
      'netscape-ca-policy-url', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.9':
      OIDEntry('HomePage-url', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.10':
      OIDEntry('EntityLogo', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.11':
      OIDEntry('UserPicture', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.12': OIDEntry(
      'netscape-ssl-server-name', 'Netscape certificate extension', false),
  '2.16.840.1.113730.1.13':
      OIDEntry('netscape-comment', 'Netscape certificate extension', false),
  '2.16.840.1.113730.2': OIDEntry('data-type', 'Netscape', false),
  '2.16.840.1.113730.2.1': OIDEntry('dataGIF', 'Netscape data type', false),
  '2.16.840.1.113730.2.2': OIDEntry('dataJPEG', 'Netscape data type', false),
  '2.16.840.1.113730.2.3': OIDEntry('dataURL', 'Netscape data type', false),
  '2.16.840.1.113730.2.4': OIDEntry('dataHTML', 'Netscape data type', false),
  '2.16.840.1.113730.2.5':
      OIDEntry('certSequence', 'Netscape data type', false),
  '2.16.840.1.113730.2.6':
      OIDEntry('certURL', 'Netscape certificate extension', false),
  '2.16.840.1.113730.3': OIDEntry('directory', 'Netscape', false),
  '2.16.840.1.113730.3.1':
      OIDEntry('ldapDefinitions', 'Netscape directory', false),
  '2.16.840.1.113730.3.1.1':
      OIDEntry('carLicense', 'Netscape LDAP definitions', false),
  '2.16.840.1.113730.3.1.2':
      OIDEntry('departmentNumber', 'Netscape LDAP definitions', false),
  '2.16.840.1.113730.3.1.3':
      OIDEntry('employeeNumber', 'Netscape LDAP definitions', false),
  '2.16.840.1.113730.3.1.4':
      OIDEntry('employeeType', 'Netscape LDAP definitions', false),
  '2.16.840.1.113730.3.1.216':
      OIDEntry('userPKCS12', 'Netscape LDAP definitions', false),
  '2.16.840.1.113730.3.2.2':
      OIDEntry('inetOrgPerson', 'Netscape LDAP definitions', false),
  '2.16.840.1.113730.4.1': OIDEntry('serverGatedCrypto', 'Netscape', false),
  '2.16.840.1.113733.1.6.3':
      OIDEntry('verisignCZAG', 'Verisign extension', false),
  '2.16.840.1.113733.1.6.6':
      OIDEntry('verisignInBox', 'Verisign extension', false),
  '2.16.840.1.113733.1.6.11':
      OIDEntry('verisignOnsiteJurisdictionHash', 'Verisign extension', false),
  '2.16.840.1.113733.1.6.13':
      OIDEntry('Unknown Verisign VPN extension', 'Verisign extension', false),
  '2.16.840.1.113733.1.6.15':
      OIDEntry('verisignServerID', 'Verisign extension', false),
  '2.16.840.1.113733.1.7.1.1':
      OIDEntry('verisignCertPolicies95Qualifier1', 'Verisign policy', false),
  '2.16.840.1.113733.1.7.1.1.1':
      OIDEntry('verisignCPSv1notice', 'Verisign policy (obsolete)', false),
  '2.16.840.1.113733.1.7.1.1.2':
      OIDEntry('verisignCPSv1nsi', 'Verisign policy (obsolete)', false),
  '2.16.840.1.113733.1.8.1':
      OIDEntry('verisignISSStrongCrypto', 'Verisign', false),
  '2.16.840.1.113733.1': OIDEntry('pki', 'Verisign extension', false),
  '2.16.840.1.113733.1.9':
      OIDEntry('pkcs7Attribute', 'Verisign PKI extension', false),
  '2.16.840.1.113733.1.9.2':
      OIDEntry('messageType', 'Verisign PKCS #7 attribute', false),
  '2.16.840.1.113733.1.9.3':
      OIDEntry('pkiStatus', 'Verisign PKCS #7 attribute', false),
  '2.16.840.1.113733.1.9.4':
      OIDEntry('failInfo', 'Verisign PKCS #7 attribute', false),
  '2.16.840.1.113733.1.9.5':
      OIDEntry('senderNonce', 'Verisign PKCS #7 attribute', false),
  '2.16.840.1.113733.1.9.6':
      OIDEntry('recipientNonce', 'Verisign PKCS #7 attribute', false),
  '2.16.840.1.113733.1.9.7':
      OIDEntry('transID', 'Verisign PKCS #7 attribute', false),
  '2.16.840.1.113733.1.9.8': OIDEntry(
      'extensionReq',
      'Verisign PKCS #7 attribute.  Use PKCS #9 extensionRequest instead',
      true),
  '2.16.840.1.113741.2': OIDEntry('intelCDSA', 'Intel CDSA', false),
  '2.16.840.1.114412.1':
      OIDEntry('digiCertNonEVCerts', 'Digicert CA policy', false),
  '2.16.840.1.114412.1.1':
      OIDEntry('digiCertOVCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.1.2':
      OIDEntry('digiCertDVCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.1.11':
      OIDEntry('digiCertFederatedDeviceCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.1.3.0.1':
      OIDEntry('digiCertGlobalCAPolicy', 'Digicert CA policy', false),
  '2.16.840.1.114412.1.3.0.2':
      OIDEntry('digiCertHighAssuranceEVCAPolicy', 'Digicert CA policy', false),
  '2.16.840.1.114412.1.3.0.3':
      OIDEntry('digiCertGlobalRootCAPolicy', 'Digicert CA policy', false),
  '2.16.840.1.114412.1.3.0.4':
      OIDEntry('digiCertAssuredIDRootCAPolicy', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.2':
      OIDEntry('digiCertEVCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.3':
      OIDEntry('digiCertObjectSigningCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.3.1':
      OIDEntry('digiCertCodeSigningCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.3.2':
      OIDEntry('digiCertEVCodeSigningCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.3.11':
      OIDEntry('digiCertKernelCodeSigningCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.3.21':
      OIDEntry('digiCertDocumentSigningCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4':
      OIDEntry('digiCertClientCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.1.1':
      OIDEntry('digiCertLevel1PersonalClientCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.1.2': OIDEntry(
      'digiCertLevel1EnterpriseClientCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.2':
      OIDEntry('digiCertLevel2ClientCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.3.1':
      OIDEntry('digiCertLevel3USClientCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.3.2':
      OIDEntry('digiCertLevel3CBPClientCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.4.1':
      OIDEntry('digiCertLevel4USClientCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.4.2':
      OIDEntry('digiCertLevel4CBPClientCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.5.1':
      OIDEntry('digiCertPIVHardwareCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.5.2':
      OIDEntry('digiCertPIVCardAuthCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.2.4.5.3':
      OIDEntry('digiCertPIVContentSigningCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.4.31':
      OIDEntry('digiCertGridClassicCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.4.31.5':
      OIDEntry('digiCertGridIntegratedCert', 'Digicert CA policy', false),
  '2.16.840.1.114412.31.4.31.1':
      OIDEntry('digiCertGridHostCert', 'Digicert CA policy', false),
  '2.23.42.0': OIDEntry('contentType', 'SET', false),
  '2.23.42.0.0': OIDEntry('panData', 'SET contentType', false),
  '2.23.42.0.1': OIDEntry('panToken', 'SET contentType', false),
  '2.23.42.0.2': OIDEntry('panOnly', 'SET contentType', false),
  '2.23.42.1': OIDEntry('msgExt', 'SET', false),
  '2.23.42.2': OIDEntry('field', 'SET', false),
  '2.23.42.2.0': OIDEntry('fullName', 'SET field', false),
  '2.23.42.2.1': OIDEntry('givenName', 'SET field', false),
  '2.23.42.2.2': OIDEntry('familyName', 'SET field', false),
  '2.23.42.2.3': OIDEntry('birthFamilyName', 'SET field', false),
  '2.23.42.2.4': OIDEntry('placeName', 'SET field', false),
  '2.23.42.2.5': OIDEntry('identificationNumber', 'SET field', false),
  '2.23.42.2.6': OIDEntry('month', 'SET field', false),
  '2.23.42.2.7': OIDEntry('date', 'SET field', false),
  '2.23.42.2.8': OIDEntry('address', 'SET field', false),
  '2.23.42.2.9': OIDEntry('telephone', 'SET field', false),
  '2.23.42.2.10': OIDEntry('amount', 'SET field', false),
  '2.23.42.2.11': OIDEntry('accountNumber', 'SET field', false),
  '2.23.42.2.12': OIDEntry('passPhrase', 'SET field', false),
  '2.23.42.3': OIDEntry('attribute', 'SET', false),
  '2.23.42.3.0': OIDEntry('cert', 'SET attribute', false),
  '2.23.42.3.0.0': OIDEntry('rootKeyThumb', 'SET cert attribute', false),
  '2.23.42.3.0.1': OIDEntry('additionalPolicy', 'SET cert attribute', false),
  '2.23.42.4': OIDEntry('algorithm', 'SET', false),
  '2.23.42.5': OIDEntry('policy', 'SET', false),
  '2.23.42.5.0': OIDEntry('root', 'SET policy', false),
  '2.23.42.6': OIDEntry('module', 'SET', false),
  '2.23.42.7': OIDEntry('certExt', 'SET', false),
  '2.23.42.7.0': OIDEntry('hashedRootKey', 'SET cert extension', false),
  '2.23.42.7.1': OIDEntry('certificateType', 'SET cert extension', false),
  '2.23.42.7.2': OIDEntry('merchantData', 'SET cert extension', false),
  '2.23.42.7.3': OIDEntry('cardCertRequired', 'SET cert extension', false),
  '2.23.42.7.4': OIDEntry('tunneling', 'SET cert extension', false),
  '2.23.42.7.5': OIDEntry('setExtensions', 'SET cert extension', false),
  '2.23.42.7.6': OIDEntry('setQualifier', 'SET cert extension', false),
  '2.23.42.8': OIDEntry('brand', 'SET', false),
  '2.23.42.8.1': OIDEntry('IATA-ATA', 'SET brand', false),
  '2.23.42.8.4': OIDEntry('VISA', 'SET brand', false),
  '2.23.42.8.5': OIDEntry('MasterCard', 'SET brand', false),
  '2.23.42.8.30': OIDEntry('Diners', 'SET brand', false),
  '2.23.42.8.34': OIDEntry('AmericanExpress', 'SET brand', false),
  '2.23.42.8.6011': OIDEntry('Novus', 'SET brand', false),
  '2.23.42.9': OIDEntry('vendor', 'SET', false),
  '2.23.42.9.0': OIDEntry('GlobeSet', 'SET vendor', false),
  '2.23.42.9.1': OIDEntry('IBM', 'SET vendor', false),
  '2.23.42.9.2': OIDEntry('CyberCash', 'SET vendor', false),
  '2.23.42.9.3': OIDEntry('Terisa', 'SET vendor', false),
  '2.23.42.9.4': OIDEntry('RSADSI', 'SET vendor', false),
  '2.23.42.9.5': OIDEntry('VeriFone', 'SET vendor', false),
  '2.23.42.9.6': OIDEntry('TrinTech', 'SET vendor', false),
  '2.23.42.9.7': OIDEntry('BankGate', 'SET vendor', false),
  '2.23.42.9.8': OIDEntry('GTE', 'SET vendor', false),
  '2.23.42.9.9': OIDEntry('CompuSource', 'SET vendor', false),
  '2.23.42.9.10': OIDEntry('Griffin', 'SET vendor', false),
  '2.23.42.9.11': OIDEntry('Certicom', 'SET vendor', false),
  '2.23.42.9.12': OIDEntry('OSS', 'SET vendor', false),
  '2.23.42.9.13': OIDEntry('TenthMountain', 'SET vendor', false),
  '2.23.42.9.14': OIDEntry('Antares', 'SET vendor', false),
  '2.23.42.9.15': OIDEntry('ECC', 'SET vendor', false),
  '2.23.42.9.16': OIDEntry('Maithean', 'SET vendor', false),
  '2.23.42.9.17': OIDEntry('Netscape', 'SET vendor', false),
  '2.23.42.9.18': OIDEntry('Verisign', 'SET vendor', false),
  '2.23.42.9.19': OIDEntry('BlueMoney', 'SET vendor', false),
  '2.23.42.9.20': OIDEntry('Lacerte', 'SET vendor', false),
  '2.23.42.9.21': OIDEntry('Fujitsu', 'SET vendor', false),
  '2.23.42.9.22': OIDEntry('eLab', 'SET vendor', false),
  '2.23.42.9.23': OIDEntry('Entrust', 'SET vendor', false),
  '2.23.42.9.24': OIDEntry('VIAnet', 'SET vendor', false),
  '2.23.42.9.25': OIDEntry('III', 'SET vendor', false),
  '2.23.42.9.26': OIDEntry('OpenMarket', 'SET vendor', false),
  '2.23.42.9.27': OIDEntry('Lexem', 'SET vendor', false),
  '2.23.42.9.28': OIDEntry('Intertrader', 'SET vendor', false),
  '2.23.42.9.29': OIDEntry('Persimmon', 'SET vendor', false),
  '2.23.42.9.30': OIDEntry('NABLE', 'SET vendor', false),
  '2.23.42.9.31': OIDEntry('espace-net', 'SET vendor', false),
  '2.23.42.9.32': OIDEntry('Hitachi', 'SET vendor', false),
  '2.23.42.9.33': OIDEntry('Microsoft', 'SET vendor', false),
  '2.23.42.9.34': OIDEntry('NEC', 'SET vendor', false),
  '2.23.42.9.35': OIDEntry('Mitsubishi', 'SET vendor', false),
  '2.23.42.9.36': OIDEntry('NCR', 'SET vendor', false),
  '2.23.42.9.37': OIDEntry('e-COMM', 'SET vendor', false),
  '2.23.42.9.38': OIDEntry('Gemplus', 'SET vendor', false),
  '2.23.42.10': OIDEntry('national', 'SET', false),
  '2.23.42.10.392': OIDEntry('Japan', 'SET national', false),
  '2.23.43.1.4': OIDEntry('wTLS-ECC', 'WAP WTLS', false),
  '2.23.43.1.4.1': OIDEntry('wTLS-ECC-curve1', 'WAP WTLS', false),
  '2.23.43.1.4.6': OIDEntry('wTLS-ECC-curve6', 'WAP WTLS', false),
  '2.23.43.1.4.8': OIDEntry('wTLS-ECC-curve8', 'WAP WTLS', false),
  '2.23.43.1.4.9': OIDEntry('wTLS-ECC-curve9', 'WAP WTLS', false),
  '2.23.133': OIDEntry('tCPA', 'TCPA', false),
  '2.23.133.1': OIDEntry('tcpaSpecVersion', 'TCPA', false),
  '2.23.133.2': OIDEntry('tcpaAttribute', 'TCPA', false),
  '2.23.133.2.1': OIDEntry('tcpaTpmManufacturer', 'TCPA Attribute', false),
  '2.23.133.2.2': OIDEntry('tcpaTpmModel', 'TCPA Attribute', false),
  '2.23.133.2.3': OIDEntry('tcpaTpmVersion', 'TCPA Attribute', false),
  '2.23.133.2.4': OIDEntry('tcpaPlatformManufacturer', 'TCPA Attribute', false),
  '2.23.133.2.5': OIDEntry('tcpaPlatformModel', 'TCPA Attribute', false),
  '2.23.133.2.6': OIDEntry('tcpaPlatformVersion', 'TCPA Attribute', false),
  '2.23.133.2.7':
      OIDEntry('tcpaComponentManufacturer', 'TCPA Attribute', false),
  '2.23.133.2.8': OIDEntry('tcpaComponentModel', 'TCPA Attribute', false),
  '2.23.133.2.9': OIDEntry('tcpaComponentVersion', 'TCPA Attribute', false),
  '2.23.133.2.10': OIDEntry('tcpaSecurityQualities', 'TCPA Attribute', false),
  '2.23.133.2.11':
      OIDEntry('tcpaTpmProtectionProfile', 'TCPA Attribute', false),
  '2.23.133.2.12': OIDEntry('tcpaTpmSecurityTarget', 'TCPA Attribute', false),
  '2.23.133.2.13':
      OIDEntry('tcpaFoundationProtectionProfile', 'TCPA Attribute', false),
  '2.23.133.2.14':
      OIDEntry('tcpaFoundationSecurityTarget', 'TCPA Attribute', false),
  '2.23.133.2.15': OIDEntry('tcpaTpmIdLabel', 'TCPA Attribute', false),
  '2.23.133.3': OIDEntry('tcpaProtocol', 'TCPA', false),
  '2.23.133.3.1': OIDEntry('tcpaPrttTpmIdProtocol', 'TCPA Protocol', false),
  '2.23.134.1.4.2.1': OIDEntry('postSignumRootQCA', 'PostSignum CA', false),
  '2.23.134.1.2.2.3': OIDEntry('postSignumPublicCA', 'PostSignum CA', false),
  '2.23.134.1.2.1.8.210':
      OIDEntry('postSignumCommercialServerPolicy', 'PostSignum CA', false),
  '2.23.136.1.1.1': OIDEntry('mRTDSignatureData', 'ICAO MRTD', false),
  '2.54.1775.2': OIDEntry(
      'hashedRootKey', 'SET.  Deprecated, use (2 23 42 7 0) instead', true),
  '2.54.1775.3': OIDEntry(
      'certificateType', 'SET.  Deprecated, use (2 23 42 7 0) instead', true),
  '2.54.1775.4': OIDEntry(
      'merchantData', 'SET.  Deprecated, use (2 23 42 7 0) instead', true),
  '2.54.1775.5': OIDEntry(
      'cardCertRequired', 'SET.  Deprecated, use (2 23 42 7 0) instead', true),
  '2.54.1775.6': OIDEntry(
      'tunneling', 'SET.  Deprecated, use (2 23 42 7 0) instead', true),
  '2.54.1775.7': OIDEntry(
      'setQualifier', 'SET.  Deprecated, use (2 23 42 7 0) instead', true),
  '2.54.1775.99':
      OIDEntry('setData', 'SET.  Deprecated, use (2 23 42 7 0) instead', true),
  '1.2.40.0.17.1.22': OIDEntry('A-Trust EV policy', 'A-Trust CA Root', false),
  '1.3.6.1.4.1.34697.2.1':
      OIDEntry('AffirmTrust EV policy', 'AffirmTrust Commercial', false),
  '1.3.6.1.4.1.34697.2.2':
      OIDEntry('AffirmTrust EV policy', 'AffirmTrust Networking', false),
  '1.3.6.1.4.1.34697.2.3':
      OIDEntry('AffirmTrust EV policy', 'AffirmTrust Premium', false),
  '1.3.6.1.4.1.34697.2.4':
      OIDEntry('AffirmTrust EV policy', 'AffirmTrust Premium ECC', false),
  '2.16.578.1.26.1.3.3':
      OIDEntry('BuyPass EV policy', 'BuyPass Class 3 EV', false),
  '1.3.6.1.4.1.17326.10.14.2.1.2':
      OIDEntry('Camerfirma EV policy', 'Camerfirma CA Root', false),
  '1.3.6.1.4.1.17326.10.8.12.1.2':
      OIDEntry('Camerfirma EV policy', 'Camerfirma CA Root', false),
  '1.3.6.1.4.1.22234.2.5.2.3.1': OIDEntry('CertPlus EV policy',
      'CertPlus Class 2 Primary CA (formerly Keynectis)', false),
  '1.3.6.1.4.1.6449.1.2.1.5.1':
      OIDEntry('Comodo EV policy', 'COMODO Certification Authority', false),
  '1.3.6.1.4.1.6334.1.100.1': OIDEntry('Cybertrust EV policy',
      'Cybertrust Global Root (now Verizon Business)', false),
  '1.3.6.1.4.1.4788.2.202.1':
      OIDEntry('D-TRUST EV policy', 'D-TRUST Root Class 3 CA 2 EV 2009', false),
  '2.16.840.1.114412.2.1': OIDEntry(
      'DigiCert EV policy', 'DigiCert High Assurance EV Root CA', false),
  '2.16.528.1.1001.1.1.1.12.6.1.1.1':
      OIDEntry('DigiNotar EV policy', 'DigiNotar Root CA', false),
  '2.16.840.1.114028.10.1.2': OIDEntry(
      'Entrust EV policy', 'Entrust Root Certification Authority', false),
  '1.3.6.1.4.1.14370.1.6': OIDEntry('GeoTrust EV policy',
      'GeoTrust Primary Certification Authority (formerly Equifax)', false),
  '1.3.6.1.4.1.4146.1.1': OIDEntry('GlobalSign EV policy', 'GlobalSign', false),
  '2.16.840.1.114413.1.7.23.3': OIDEntry('GoDaddy EV policy',
      'GoDaddy Class 2 Certification Authority (formerly ValiCert)', false),
  '1.3.6.1.4.1.14777.6.1.1': OIDEntry(
      'Izenpe EV policy', 'Certificado de Servidor Seguro SSL EV', false),
  '1.3.6.1.4.1.14777.6.1.2':
      OIDEntry('Izenpe EV policy', 'Certificado de Sede Electronica EV', false),
  '1.3.6.1.4.1.782.1.2.1.8.1': OIDEntry('Network Solutions EV policy',
      'Network Solutions Certificate Authority', false),
  '1.3.6.1.4.1.8024.0.2.100.1.2':
      OIDEntry('QuoVadis EV policy', 'QuoVadis Root CA 2', false),
  '1.2.392.200091.100.721.1': OIDEntry(
      'Security Communication (SECOM) EV policy',
      'Security Communication RootCA1',
      false),
  '2.16.840.1.114414.1.7.23.3': OIDEntry('Starfield EV policy',
      'Starfield Class 2 Certification Authority', false),
  '1.3.6.1.4.1.23223.1.1.1':
      OIDEntry('StartCom EV policy', 'StartCom Certification Authority', false),
  '2.16.756.1.89.1.2.1.1':
      OIDEntry('SwissSign EV policy', 'SwissSign Gold CA - G2', false),
  '1.3.6.1.4.1.7879.13.24.1':
      OIDEntry('T-TeleSec EV policy', 'T-TeleSec GlobalRoot Class 3', false),
  '2.16.840.1.113733.1.7.48.1':
      OIDEntry('Thawte EV policy', 'Thawte Premium Server CA', false),
  '2.16.840.1.114404.1.1.2.4.1': OIDEntry('TrustWave EV policy',
      'TrustWave CA, formerly SecureTrust, before that XRamp', false),
  '1.3.6.1.4.1.40869.1.1.22.3':
      OIDEntry('TWCA EV policy', 'TWCA Root Certification Authority', false),
  '2.16.840.1.113733.1.7.23.6': OIDEntry('VeriSign EV policy',
      'VeriSign Class 3 Public Primary Certification Authority', false),
  '2.16.840.1.114171.500.9': OIDEntry('Wells Fargo EV policy',
      'Wells Fargo WellsSecure Public Root Certificate Authority', false),
};

