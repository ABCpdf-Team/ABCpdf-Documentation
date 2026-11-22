# WebCapturePageSetElement Class

This class represents the web capture page set. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 353, page 622.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=630)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 389, page 802.](https://www.iso.org/standard/63534.html)

A web capture page set dictionary is a specialisation of the web capture content set for page content captured from the web.

The T entry holds the captured page title as a text string. The TID entry holds a byte string transaction identifier linking this page set to a specific capture transaction.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.WebCaptureContentSetElement`](../1629-webcapturecontentsetelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.WebCapturePageSetElement`

## Methods

| Method | Description |
| --- | --- |
| [WebCapturePageSetElement](1-methods/01-webcapturepagesetelement.md) | Create a new WebCapturePageSetElement. |
|  | [inherited methods...](../1629-webcapturecontentsetelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryT](2-properties/01-entryt.md) | Represents the "T" entry of the web capture page set object. |
| [EntryTID](2-properties/02-entrytid.md) | Represents the "TID" entry of the web capture page set object. |
|  | [inherited properties...](../1629-webcapturecontentsetelement/index.md) |
