# EncryptionElement Class

This class represents the encryption dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 20, page 56.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=64)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 20, page 71.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.18, page 14.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=14)

The encryption dictionary describes the security handler and encryption parameters applied to a PDF document. It is referenced from the file trailer's Encrypt entry and is never itself encrypted.

The Filter entry names the security handler responsible for encryption and decryption. The standard handler is named Standard. Third-party handlers may be registered under other names.

The V entry selects the encryption algorithm and key length. Higher values correspond to stronger algorithms: V 4 introduced crypt filters and AES in PDF 1.5, and V 6 introduced 256-bit AES in PDF 2.0.

The CF entry holds a dictionary of named crypt filter definitions. The StmF and StrF entries name the crypt filters applied to streams and string objects respectively. The EFF entry names the filter applied to embedded file streams.

The Length entry specifies the key length in bits. For V values that support variable key lengths, this entry controls the actual key size used. It must be a multiple of 8.

When SubFilter is present, it names a public-key or other non-standard encryption protocol layered on top of the named Filter. This allows vendor-specific encryption while retaining a standard outer handler name.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.EncryptionElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.PublicKeyEncryptionElement`](../1073-publickeyencryptionelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.StandardEncryptionElement`](../1068-standardencryptionelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [EncryptionElement](1-methods/01-encryptionelement.md) | Create a new EncryptionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryFilter](2-properties/01-entryfilter.md) | Represents the "Filter" entry of the encryption dictionary object. |
| [EntrySubFilter](2-properties/02-entrysubfilter.md) | Represents the "SubFilter" entry of the encryption dictionary object. |
| [EntryV](2-properties/03-entryv.md) | Represents the "V" entry of the encryption dictionary object. |
| [EntryLength](2-properties/04-entrylength.md) | Represents the "Length" entry of the encryption dictionary object. |
| [EntryCF](2-properties/05-entrycf.md) | Represents the "CF" entry of the encryption dictionary object. |
| [EntryStmF](2-properties/06-entrystmf.md) | Represents the "StmF" entry of the encryption dictionary object. |
| [EntryStrF](2-properties/07-entrystrf.md) | Represents the "StrF" entry of the encryption dictionary object. |
| [EntryEFF](2-properties/08-entryeff.md) | Represents the "EFF" entry of the encryption dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
