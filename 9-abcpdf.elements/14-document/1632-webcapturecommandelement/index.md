# WebCaptureCommandElement Class

This class represents the web capture command dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 357, page 624.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=632)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 393, page 804.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because SourceInformationElement.EntryC and WebCaptureInformationElement.EntryC require it to be so.

A web capture command dictionary records the parameters of a single web capture operation: the requested URL, retrieval settings, and response content type.

The URL entry holds the requested URL. The L entry gives the link depth followed. The F entry holds command flags controlling spider behaviour.

The P entry holds an array of web capture command settings dictionaries recording global capture settings. The CT entry records the MIME content type of the response.

The H entry holds the HTTP request headers sent. The S entry holds source information dictionaries for all content retrieved by this command.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.WebCaptureCommandElement`

## Methods

| Method | Description |
| --- | --- |
| [WebCaptureCommandElement](1-methods/01-webcapturecommandelement.md) | Create a new WebCaptureCommandElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryURL](2-properties/01-entryurl.md) | Represents the "URL" entry of the web capture command dictionary object. |
| [EntryL](2-properties/02-entryl.md) | Represents the "L" entry of the web capture command dictionary object. |
| [EntryF](2-properties/03-entryf.md) | Represents the "F" entry of the web capture command dictionary object. |
| [EntryP](2-properties/04-entryp.md) | Represents the "P" entry of the web capture command dictionary object. |
| [EntryCT](2-properties/05-entryct.md) | Represents the "CT" entry of the web capture command dictionary object. |
| [EntryH](2-properties/06-entryh.md) | Represents the "H" entry of the web capture command dictionary object. |
| [EntryS](2-properties/07-entrys.md) | Represents the "S" entry of the web capture command dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
