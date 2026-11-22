# PublicKeyEncryptionElement Class

This class represents the public-key security handler encryption dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 23, page 65.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=73)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 23, page 86.](https://www.iso.org/standard/63534.html)

The public-key encryption dictionary carries the recipient information for documents encrypted using the public-key security handler. Each recipient is a CMS EnvelopedData object containing the document encryption key encrypted with that recipient's public key certificate.

The Recipients entry holds an array of byte strings, each containing a DER-encoded CMS EnvelopedData structure. A reader with access to a matching private key can decrypt one of these structures to recover the document encryption key.

The P entry encodes the permission flags that apply to the document for recipients who decrypt it. These flags have the same meaning as in the standard security handler.

Public-key encryption allows multiple recipients to open the same document, each using their own certificate, without sharing a password. This makes it suitable for controlled distribution workflows.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.EncryptionElement`](../1064-encryptionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.PublicKeyEncryptionElement`

## Methods

| Method | Description |
| --- | --- |
| [PublicKeyEncryptionElement](1-methods/01-publickeyencryptionelement.md) | Create a new PublicKeyEncryptionElement. |
|  | [inherited methods...](../1064-encryptionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryRecipients](2-properties/01-entryrecipients.md) | Represents the "Recipients" entry of the public-key security handler encryption dictionary object. |
| [EntryP](2-properties/02-entryp.md) | Represents the "P" entry of the public-key security handler encryption dictionary object. |
|  | [inherited properties...](../1064-encryptionelement/index.md) |
