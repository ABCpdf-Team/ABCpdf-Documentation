# WebCaptureImageSetElement Class

This class represents the web capture image set. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 354, page 622.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=630)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 390, page 802.](https://www.iso.org/standard/63534.html)

A web capture image set dictionary is a specialisation of the web capture content set for images captured from the web.

The R entry holds an array of reference dictionaries, each mapping a URL to the image XObject captured from it. This preserves the association between each image and its original web address.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.WebCaptureContentSetElement`](../1629-webcapturecontentsetelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.WebCaptureImageSetElement`

## Methods

| Method | Description |
| --- | --- |
| [WebCaptureImageSetElement](1-methods/01-webcaptureimagesetelement.md) | Create a new WebCaptureImageSetElement. |
|  | [inherited methods...](../1629-webcapturecontentsetelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryR](2-properties/01-entryr.md) | Represents the "R" entry of the web capture image set object. |
|  | [inherited properties...](../1629-webcapturecontentsetelement/index.md) |
