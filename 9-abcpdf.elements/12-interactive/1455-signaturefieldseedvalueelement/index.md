# SignatureFieldSeedValueElement Class

This class represents the signature field seed value dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 447.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=455)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 542.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.83, page 44.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=44)

This class is always an indirect object because SignatureFieldElement.EntrySV requires it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.SignatureFieldSeedValueElement`

A signature field seed value dictionary pre-configures the signing operation. It can restrict or suggest the filter, sub-filter, digest method, certificate requirements, timestamp URL, and appearance.

The Ff integer marks each restriction as mandatory or advisory. The DigestMethod array lists acceptable hash algorithms. The Cert entry references a certificate seed value dictionary constraining the signing certificate.

LockDocument, AddRevInfo, and AppearanceFilter control document locking, long-term validation data embedding, and appearance handler restriction respectively.

## Methods

| Method | Description |
| --- | --- |
| [SignatureFieldSeedValueElement](1-methods/01-signaturefieldseedvalueelement.md) | Create a new SignatureFieldSeedValueElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the signature field seed value dictionary object. |
| [EntryFilter](2-properties/02-entryfilter.md) | Represents the "Filter" entry of the signature field seed value dictionary object. |
| [EntrySubFilter](2-properties/03-entrysubfilter.md) | Represents the "SubFilter" entry of the signature field seed value dictionary object. |
| [EntryDigestMethod](2-properties/04-entrydigestmethod.md) | Represents the "DigestMethod" entry of the signature field seed value dictionary object. |
| [EntryCert](2-properties/05-entrycert.md) | Represents the "Cert" entry of the signature field seed value dictionary object. |
| [EntryReasons](2-properties/06-entryreasons.md) | Represents the "Reasons" entry of the signature field seed value dictionary object. |
| [EntryMDP](2-properties/07-entrymdp.md) | Represents the "MDP" entry of the signature field seed value dictionary object. |
| [EntryTimeStamp](2-properties/08-entrytimestamp.md) | Represents the "TimeStamp" entry of the signature field seed value dictionary object. |
| [EntryLegalAttestation](2-properties/09-entrylegalattestation.md) | Represents the "LegalAttestation" entry of the signature field seed value dictionary object. |
| [EntryAddRevInfo](2-properties/10-entryaddrevinfo.md) | Represents the "AddRevInfo" entry of the signature field seed value dictionary object. |
| [EntryLockDocument](2-properties/11-entrylockdocument.md) | Represents the "LockDocument" entry of the signature field seed value dictionary object. |
| [EntryAppearanceFilter](2-properties/12-entryappearancefilter.md) | Represents the "AppearanceFilter" entry of the signature field seed value dictionary object. |
| [EntryFf](2-properties/13-entryff.md) | Represents the "Ff" entry of the signature field seed value dictionary object. |
| [EntryV](2-properties/14-entryv.md) | Represents the "V" entry of the signature field seed value dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
