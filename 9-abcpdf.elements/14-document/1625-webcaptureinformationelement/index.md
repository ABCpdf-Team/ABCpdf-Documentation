# WebCaptureInformationElement Class

This class represents the web capture information dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 350, page 617.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=625)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 386, page 796.](https://www.iso.org/standard/63534.html)

The web capture information dictionary stores metadata about a PDF document created by capturing web content. It is stored in the document catalog SpiderInfo entry.

The V entry gives the web capture specification version as a real number. The C entry holds an array of indirect references to web capture content set dictionaries, one for each set of captured content.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.WebCaptureInformationElement`

## Methods

| Method | Description |
| --- | --- |
| [WebCaptureInformationElement](1-methods/01-webcaptureinformationelement.md) | Create a new WebCaptureInformationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryV](2-properties/01-entryv.md) | Represents the "V" entry of the web capture information dictionary object. |
| [EntryC](2-properties/02-entryc.md) | Represents the "C" entry of the web capture information dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
