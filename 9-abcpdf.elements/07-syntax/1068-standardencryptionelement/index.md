# StandardEncryptionElement Class

This class represents the standard security handler encryption dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 21, page 60.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=68)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 21, page 77.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.19, page 16.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=16)

The standard encryption dictionary extends the base encryption dictionary with entries specific to the standard password-based security handler. It stores the hashed and encrypted forms of the owner and user passwords.

The O entry holds data derived from the owner password. The U entry holds data derived from the user password and the document encryption key. Together, these entries allow a reader to verify a supplied password and recover the document encryption key.

In PDF 2.0 (revision 6), the OE and UE entries hold the document encryption key encrypted under the owner and user passwords respectively. This design means the encryption key is not derived from the password but is instead a random key stored in encrypted form.

The P entry is a set of permission flags stored as a signed 32-bit integer. The bits control operations such as printing, copying, and modifying the document. These flags are enforced by conforming readers and are included in the encryption key derivation to prevent tampering.

The Perms entry, present in revision 6, holds an encrypted copy of the permission flags and other metadata. A reader verifies this entry after decryption to confirm that the P flags have not been altered.

The EncryptMetadata entry controls whether the document's XML metadata stream is encrypted. When false, the metadata remains accessible without decryption, supporting metadata indexing by search engines and other tools.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.EncryptionElement`](../1064-encryptionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.StandardEncryptionElement`

## Methods

| Method | Description |
| --- | --- |
| [StandardEncryptionElement](1-methods/01-standardencryptionelement.md) | Create a new StandardEncryptionElement. |
|  | [inherited methods...](../1064-encryptionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryR](2-properties/01-entryr.md) | Represents the "R" entry of the standard security handler encryption dictionary object. |
| [EntryO](2-properties/02-entryo.md) | Represents the "O" entry of the standard security handler encryption dictionary object. |
| [EntryU](2-properties/03-entryu.md) | Represents the "U" entry of the standard security handler encryption dictionary object. |
| [EntryOE](2-properties/04-entryoe.md) | Represents the "OE" entry of the standard security handler encryption dictionary object. |
| [EntryUE](2-properties/05-entryue.md) | Represents the "UE" entry of the standard security handler encryption dictionary object. |
| [EntryP](2-properties/06-entryp.md) | Represents the "P" entry of the standard security handler encryption dictionary object. |
| [EntryPerms](2-properties/07-entryperms.md) | Represents the "Perms" entry of the standard security handler encryption dictionary object. |
| [EntryEncryptMetadata](2-properties/08-entryencryptmetadata.md) | Represents the "EncryptMetadata" entry of the standard security handler encryption dictionary object. |
|  | [inherited properties...](../1064-encryptionelement/index.md) |
