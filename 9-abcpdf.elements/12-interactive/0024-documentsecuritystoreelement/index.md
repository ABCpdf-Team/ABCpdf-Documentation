# DocumentSecurityStoreElement Class

This class represents the document security store dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 261, page 582.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because SignatureValidationRelatedInformationElement.EntryCRL and SignatureValidationRelatedInformationElement.EntryOCSP require it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DocumentSecurityStoreElement`

A document security store holds the revocation and certificate data needed to verify digital signatures without requiring a network connection at the time of verification. Embedding this data in the PDF makes long-term validation possible after the original certificates or OCSP responders have expired.

The dictionary acts as a container for three kinds of embedded data: certificate chains, OCSP responses, and certificate revocation lists, each stored as an array of stream objects.

Signature validation-related information dictionaries referenced from the VRI entry group the data specific to a single signature, while the top-level arrays hold data that may be shared across multiple signatures.

This structure follows PAdES long-term validation requirements and enables a verifier to reconstruct the complete trust chain from data embedded in the file alone.

## Methods

| Method | Description |
| --- | --- |
| [DocumentSecurityStoreElement](1-methods/01-documentsecuritystoreelement.md) | Create a new DocumentSecurityStoreElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the document security store dictionary object. |
| [EntryVRI](2-properties/02-entryvri.md) | Represents the "VRI" entry of the document security store dictionary object. |
| [EntryCerts](2-properties/03-entrycerts.md) | Represents the "Certs" entry of the document security store dictionary object. |
| [EntryOCSPs](2-properties/04-entryocsps.md) | Represents the "OCSPs" entry of the document security store dictionary object. |
| [EntryCRLs](2-properties/05-entrycrls.md) | Represents the "CRLs" entry of the document security store dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
