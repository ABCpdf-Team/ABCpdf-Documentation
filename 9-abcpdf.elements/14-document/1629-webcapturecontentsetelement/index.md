# WebCaptureContentSetElement Class

This class represents the web capture content set. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 352, page 621.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=629)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 388, page 801.](https://www.iso.org/standard/63534.html)

A web capture content set dictionary describes a set of related PDF objects captured from web content, recording the content type, source URL, and capture metadata.

The S entry names the content set type: SPS for a spider page set or SIS for a spider image set. The type determines which additional entries are present.

The ID entry uniquely identifies the content set within the document. The O entry holds an array of indirect references to the captured page or image objects.

The SI entry holds source information dictionaries describing the source URLs. The CT and TS entries record the MIME type and capture timestamp.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.WebCaptureContentSetElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.WebCaptureImageSetElement`](../1630-webcaptureimagesetelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.WebCapturePageSetElement`](../1630-webcapturepagesetelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [WebCaptureContentSetElement](1-methods/01-webcapturecontentsetelement.md) | Create a new WebCaptureContentSetElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the web capture content set object. |
| [EntryS](2-properties/02-entrys.md) | Represents the "S" entry of the web capture content set object. |
| [EntryID](2-properties/03-entryid.md) | Represents the "ID" entry of the web capture content set object. |
| [EntryO](2-properties/04-entryo.md) | Represents the "O" entry of the web capture content set object. |
| [EntrySI](2-properties/05-entrysi.md) | Represents the "SI" entry of the web capture content set object. |
| [EntryCT](2-properties/06-entryct.md) | Represents the "CT" entry of the web capture content set object. |
| [EntryTS](2-properties/07-entryts.md) | Represents the "TS" entry of the web capture content set object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
