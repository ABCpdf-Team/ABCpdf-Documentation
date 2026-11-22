# CertificateSeedValueElement Class

This class represents the certificate seed value dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 235, page 449.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=457)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 238, page 545.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CertificateSeedValueElement`

A certificate seed value dictionary constrains the signing certificate that may be used to sign a signature field. The Subject, SubjectDN, KeyUsage, Issuer, and OID entries each restrict different certificate properties.

The Ff integer marks individual constraints as mandatory or advisory. The SignaturePolicyOID, SignaturePolicyHashValue, and SignaturePolicyHashAlgorithm entries bind the signature to a declared policy.

## Methods

| Method | Description |
| --- | --- |
| [CertificateSeedValueElement](1-methods/01-certificateseedvalueelement.md) | Create a new CertificateSeedValueElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the certificate seed value dictionary object. |
| [EntryFf](2-properties/02-entryff.md) | Represents the "Ff" entry of the certificate seed value dictionary object. |
| [EntrySubject](2-properties/03-entrysubject.md) | Represents the "Subject" entry of the certificate seed value dictionary object. |
| [EntrySubjectDN](2-properties/04-entrysubjectdn.md) | Represents the "SubjectDN" entry of the certificate seed value dictionary object. |
| [EntryKeyUsage](2-properties/05-entrykeyusage.md) | Represents the "KeyUsage" entry of the certificate seed value dictionary object. |
| [EntryIssuer](2-properties/06-entryissuer.md) | Represents the "Issuer" entry of the certificate seed value dictionary object. |
| [EntryOID](2-properties/07-entryoid.md) | Represents the "OID" entry of the certificate seed value dictionary object. |
| [EntryURL](2-properties/08-entryurl.md) | Represents the "URL" entry of the certificate seed value dictionary object. |
| [EntryURLType](2-properties/09-entryurltype.md) | Represents the "URLType" entry of the certificate seed value dictionary object. |
| [EntrySignaturePolicyOID](2-properties/10-entrysignaturepolicyoid.md) | Represents the "SignaturePolicyOID" entry of the certificate seed value dictionary object. |
| [EntrySignaturePolicyHashValue](2-properties/11-entrysignaturepolicyhashvalue.md) | Represents the "SignaturePolicyHashValue" entry of the certificate seed value dictionary object. |
| [EntrySignaturePolicyHashAlgorithm](2-properties/12-entrysignaturepolicyhashalgorithm.md) | Represents the "SignaturePolicyHashAlgorithm" entry of the certificate seed value dictionary object. |
| [EntrySignaturePolicyCommitmentType](2-properties/13-entrysignaturepolicycommitmenttype.md) | Represents the "SignaturePolicyCommitmentType" entry of the certificate seed value dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
