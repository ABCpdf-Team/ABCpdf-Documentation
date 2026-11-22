# SourceInformationElement Class

This class represents the source information dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 355, page 623.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=631)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 391, page 803.](https://www.iso.org/standard/63534.html)

A source information dictionary records the origin of captured web content: the source URL, capture timestamp, HTTP encoding, and the capture command used.

The AU entry holds the source URL as a string or URL alias dictionary. The TS entry holds the capture timestamp as a PDF date string.

The E entry records the MIME encoding. The S entry holds an array of source information dictionaries for content retrieved from multiple sources or through redirects.

The C entry references the web capture command dictionary used to capture this content, linking source information back to the capture parameters.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.SourceInformationElement`

## Methods

| Method | Description |
| --- | --- |
| [SourceInformationElement](1-methods/01-sourceinformationelement.md) | Create a new SourceInformationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryAU](2-properties/01-entryau.md) | Represents the "AU" entry of the source information dictionary object. |
| [EntryTS](2-properties/02-entryts.md) | Represents the "TS" entry of the source information dictionary object. |
| [EntryE](2-properties/03-entrye.md) | Represents the "E" entry of the source information dictionary object. |
| [EntryS](2-properties/04-entrys.md) | Represents the "S" entry of the source information dictionary object. |
| [EntryC](2-properties/05-entryc.md) | Represents the "C" entry of the source information dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
