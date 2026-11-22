# EmbeddedFileParameterElement Class

This class represents the embedded file parameter dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 46, page 104.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=112)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 45, page 137.](https://www.iso.org/standard/63534.html)

The embedded file parameter dictionary stores metadata about an embedded file: its uncompressed size, creation date, modification date, and a checksum for integrity verification.

The Size entry gives the size of the uncompressed file data in bytes. This allows an application to report the file size without fully decoding the stream.

The CreationDate and ModDate entries hold the file's creation and last-modification timestamps as PDF date strings. These dates refer to the original file, not to the time it was embedded in the PDF.

The CheckSum entry holds a 16-byte MD5 digest of the uncompressed file data. A reader can verify the integrity of the embedded data by computing and comparing this digest after extraction.

The Mac entry references a MacOS file information dictionary carrying creator and file type codes for compatibility with classic MacOS applications.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.EmbeddedFileParameterElement`

## Methods

| Method | Description |
| --- | --- |
| [EmbeddedFileParameterElement](1-methods/01-embeddedfileparameterelement.md) | Create a new EmbeddedFileParameterElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySize](2-properties/01-entrysize.md) | Represents the "Size" entry of the embedded file parameter dictionary object. |
| [EntryCreationDate](2-properties/02-entrycreationdate.md) | Represents the "CreationDate" entry of the embedded file parameter dictionary object. |
| [EntryModDate](2-properties/03-entrymoddate.md) | Represents the "ModDate" entry of the embedded file parameter dictionary object. |
| [EntryMac](2-properties/04-entrymac.md) | Represents the "Mac" entry of the embedded file parameter dictionary object. |
| [EntryCheckSum](2-properties/05-entrychecksum.md) | Represents the "CheckSum" entry of the embedded file parameter dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
