# EncryptedPayloadElement Class

This class represents the encrypted payload dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 28, page 94.](https://www.iso.org/standard/63534.html)

The encrypted payload dictionary is used in PDF 2.0 to attach an unencrypted wrapper document to an encrypted payload. The wrapper is visible to viewers that do not support the encryption, while the payload carries the protected content.

The Version entry in the dictionary identifies the PDF version of the encrypted payload, allowing the reader to determine whether it can process the protected content before attempting decryption.

This mechanism supports a two-layer document structure: a conforming reader that can decrypt the payload ignores the wrapper, while a non-conforming reader presents the wrapper as a fallback.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.EncryptedPayloadElement`

## Methods

| Method | Description |
| --- | --- |
| [EncryptedPayloadElement](1-methods/01-encryptedpayloadelement.md) | Create a new EncryptedPayloadElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the encrypted payload dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the encrypted payload dictionary object. |
| [EntryVersion](2-properties/03-entryversion.md) | Represents the "Version" entry of the encrypted payload dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
