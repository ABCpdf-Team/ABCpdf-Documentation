# ScreenAnnotationElement Class

This class represents the screen annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 187, page 407.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=415)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 190, page 494.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because RenditionActionElement.EntryAN requires it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.ScreenAnnotationElement`

A screen annotation defines a region on a page that can display media content such as video, audio, or a 3D scene. It works with rendition actions and is the current approach for rich media in PDF 2.0.

The MK entry provides visual properties for the annotation area when media is not playing. The A and AA entries hold the actions governing playback initiation and event handling.

## Methods

| Method | Description |
| --- | --- |
| [ScreenAnnotationElement](1-methods/01-screenannotationelement.md) | Create a new ScreenAnnotationElement. |
|  | [inherited methods...](../1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryT](2-properties/01-entryt.md) | Represents the "T" entry of the screen annotation object. |
| [EntryMK](2-properties/02-entrymk.md) | Represents the "MK" entry of the screen annotation object. |
| [EntryA](2-properties/03-entrya.md) | Represents the "A" entry of the screen annotation object. |
| [EntryAA](2-properties/04-entryaa.md) | Represents the "AA" entry of the screen annotation object. |
|  | [inherited properties...](../1391-annotationelement/index.md) |
