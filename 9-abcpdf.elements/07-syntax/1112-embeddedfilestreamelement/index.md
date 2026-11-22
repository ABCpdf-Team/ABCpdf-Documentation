# EmbeddedFileStreamElement Class

This class represents the embedded file stream dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 45, page 104.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=112)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 44, page 136.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 244, page 460.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=468)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 247, page 558.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

An embedded file stream contains the actual data of a file attached to a PDF document. It follows the standard stream format with additional entries in its dictionary describing the embedded file's properties.

The Params entry references an embedded file parameter dictionary that carries the file's uncompressed size, dates, and checksum. These metadata values apply to the file as it existed before embedding.

The EncryptionRevision entry records the revision of the document's encryption handler that was in effect when the file was embedded. This supports correct decryption of embedded files in documents that undergo encryption revision upgrades.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.EmbeddedFileStreamElement`

## Methods

| Method | Description |
| --- | --- |
| [EmbeddedFileStreamElement](1-methods/01-embeddedfilestreamelement.md) | Create a new EmbeddedFileStreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryType](2-properties/02-entrytype.md) | Represents the "Type" entry of the embedded file stream dictionary object. |
| [EntrySubtype](2-properties/03-entrysubtype.md) | Represents the "Subtype" entry of the embedded file stream dictionary object. |
| [EntryParams](2-properties/04-entryparams.md) | Represents the "Params" entry of the embedded file stream dictionary object. |
| [EntryEncryptionRevision](2-properties/05-entryencryptionrevision.md) | Represents the "EncryptionRevision" entry of the embedded file stream dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
