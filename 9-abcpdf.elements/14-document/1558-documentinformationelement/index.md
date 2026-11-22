# DocumentInformationElement Class

This class represents the document information dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 317, page 550.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=558)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 349, page 712.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because CrossReferenceStreamElement.EntryInfo and FileTrailerElement.EntryInfo require it to be so.

The document information dictionary stores basic metadata about a PDF document as string entries. It is referenced from the file trailer and is not encrypted, making its contents accessible without authentication.

The dictionary provides entries for title, author, subject, keywords, creator application, producer application, creation date, modification date, and trapping status.

In PDF 2.0, this dictionary is deprecated. Authors should record metadata using an XMP metadata stream attached to the document catalog. Conforming PDF 2.0 readers should prefer XMP when both are present.

When both are present, their values should be consistent. If they conflict, the XMP metadata takes precedence in PDF 2.0 documents.

The Trapped entry is the only entry that affects document processing rather than simply describing the document. It tells a reader whether the document has been trapped for printing.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DocumentInformationElement`

## Methods

| Method | Description |
| --- | --- |
| [DocumentInformationElement](1-methods/01-documentinformationelement.md) | Create a new DocumentInformationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryTitle](2-properties/01-entrytitle.md) | Represents the "Title" entry of the document information dictionary object. |
| [EntryAuthor](2-properties/02-entryauthor.md) | Represents the "Author" entry of the document information dictionary object. |
| [EntrySubject](2-properties/03-entrysubject.md) | Represents the "Subject" entry of the document information dictionary object. |
| [EntryKeywords](2-properties/04-entrykeywords.md) | Represents the "Keywords" entry of the document information dictionary object. |
| [EntryCreator](2-properties/05-entrycreator.md) | Represents the "Creator" entry of the document information dictionary object. |
| [EntryProducer](2-properties/06-entryproducer.md) | Represents the "Producer" entry of the document information dictionary object. |
| [EntryCreationDate](2-properties/07-entrycreationdate.md) | Represents the "CreationDate" entry of the document information dictionary object. |
| [EntryModDate](2-properties/08-entrymoddate.md) | Represents the "ModDate" entry of the document information dictionary object. |
| [EntryTrapped](2-properties/09-entrytrapped.md) | Represents the "Trapped" entry of the document information dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
