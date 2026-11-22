# SignatureValidationRelatedInformationElement Class

This class represents the signature validation-related information dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 262, page 584.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.SignatureValidationRelatedInformationElement`

A signature validation-related information dictionary groups the certificate, OCSP, and CRL data directly relevant to verifying one specific signature. It is referenced from the document security store by a key that is the uppercase hexadecimal encoding of the SHA-1 hash of the signature's DER-encoded bytes.

Embedding this data in the PDF makes it possible to verify the signature at a later date when the OCSP responder or CRL distribution point may no longer be accessible and when the signing certificate may itself have expired.

The certificate array holds the full chain needed to establish trust from the signing certificate up to a trusted root. OCSP and CRL arrays hold the responses confirming those certificates were not revoked at the time of signing.

## Methods

| Method | Description |
| --- | --- |
| [SignatureValidationRelatedInformationElement](1-methods/01-signaturevalidationrelatedinformationelement.md) | Create a new SignatureValidationRelatedInformationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the signature validation-related information dictionary object. |
| [EntryCert](2-properties/02-entrycert.md) | Represents the "Cert" entry of the signature validation-related information dictionary object. |
| [EntryCRL](2-properties/03-entrycrl.md) | Represents the "CRL" entry of the signature validation-related information dictionary object. |
| [EntryOCSP](2-properties/04-entryocsp.md) | Represents the "OCSP" entry of the signature validation-related information dictionary object. |
| [EntryTU](2-properties/05-entrytu.md) | Represents the "TU" entry of the signature validation-related information dictionary object. |
| [EntryTS](2-properties/06-entryts.md) | Represents the "TS" entry of the signature validation-related information dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
