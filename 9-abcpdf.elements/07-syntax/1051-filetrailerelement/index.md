# FileTrailerElement Class

This class represents the file trailer dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 15, page 43.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=51)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 15, page 57.](https://www.iso.org/standard/63534.html)

The file trailer dictionary is located at the end of each revision of a PDF file. It contains references to the cross-reference table and the document catalog, providing the starting points for reading a PDF file from back to front.

A conforming reader locates the start of the trailer by searching backward from the end of the file for the startxref keyword, which gives the byte offset of the cross-reference section or cross-reference stream.

The Size entry gives the total number of entries in the cross-reference table, including entries from all previous revisions. This value is one greater than the highest object number in the file.

The Prev entry gives the byte offset of the previous cross-reference section, enabling a reader to traverse all revisions of an incrementally updated document.

The Root entry references the document catalog, which is the root of the document's object hierarchy. The Encrypt entry references the encryption dictionary when the document is encrypted.

The ID entry holds a two-element array of byte strings. The first element is set when the document is created and never changes. The second element is updated each time the document is modified. Together they form a document identifier used by encryption and linking mechanisms.

The XRefStm entry, present only in hybrid-reference files, gives the byte offset of a cross-reference stream that covers the same revision. This allows PDF 1.5 readers to use the stream while older readers use the table.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FileTrailerElement`

## Methods

| Method | Description |
| --- | --- |
| [FileTrailerElement](1-methods/01-filetrailerelement.md) | Create a new FileTrailerElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySize](2-properties/01-entrysize.md) | Represents the "Size" entry of the file trailer dictionary object. |
| [EntryPrev](2-properties/02-entryprev.md) | Represents the "Prev" entry of the file trailer dictionary object. |
| [EntryRoot](2-properties/03-entryroot.md) | Represents the "Root" entry of the file trailer dictionary object. |
| [EntryEncrypt](2-properties/04-entryencrypt.md) | Represents the "Encrypt" entry of the file trailer dictionary object. |
| [EntryInfo](2-properties/05-entryinfo.md) | Represents the "Info" entry of the file trailer dictionary object. |
| [EntryID](2-properties/06-entryid.md) | Represents the "ID" entry of the file trailer dictionary object. |
| [EntryXRefStm](2-properties/07-entryxrefstm.md) | Represents the "XRefStm" entry of the file trailer dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
