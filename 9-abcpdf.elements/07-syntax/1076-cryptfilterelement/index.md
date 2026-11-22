# CryptFilterElement Class

This class represents the crypt filter dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 25, page 68.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=76)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 25, page 89.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.22, page 22.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=22)

A crypt filter dictionary defines the encryption algorithm and key length applied to a specific class of objects. Crypt filters are referenced by name from the encryption dictionary's CF entry.

The CFM entry names the encryption method: None means no encryption, V2 uses RC4, AESV2 uses 128-bit AES, and AESV3 uses 256-bit AES. The method applies to streams and strings that reference this filter.

The AuthEvent entry specifies when the reader should prompt for a password to authenticate against this filter: DocOpen means at document open time, and EFOpen means when an embedded file using this filter is accessed.

The Length entry gives the key length in bytes for this specific filter. Different filters in the same document may use different key lengths.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CryptFilterElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.PublicKeyCryptFilterElement`](../1077-publickeycryptfilterelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [CryptFilterElement](1-methods/01-cryptfilterelement.md) | Create a new CryptFilterElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the crypt filter dictionary object. |
| [EntryCFM](2-properties/02-entrycfm.md) | Represents the "CFM" entry of the crypt filter dictionary object. |
| [EntryAuthEvent](2-properties/03-entryauthevent.md) | Represents the "AuthEvent" entry of the crypt filter dictionary object. |
| [EntryLength](2-properties/04-entrylength.md) | Represents the "Length" entry of the crypt filter dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
