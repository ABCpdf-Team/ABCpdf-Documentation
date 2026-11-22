# RichMediaAnnotationElement Class

This class represents the richmedia annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 333, page 696.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.49, page 77.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=77)

This class is always an indirect object because RichMediaExecuteActionElement.EntryTA requires it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.RichMediaAnnotationElement`

A rich media annotation embeds interactive media content - such as Flash, video, or a 3D scene - within a rectangular area of a PDF page.

The RichMediaContent entry holds the assets, configurations, and views. The RichMediaSettings entry holds the activation and deactivation behaviour.

## Methods

| Method | Description |
| --- | --- |
| [RichMediaAnnotationElement](1-methods/01-richmediaannotationelement.md) | Create a new RichMediaAnnotationElement. |
|  | [inherited methods...](../1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryRichMediaSettings](2-properties/01-entryrichmediasettings.md) | Represents the "RichMediaSettings" entry of the richmedia annotation object. |
| [EntryRichMediaContent](2-properties/02-entryrichmediacontent.md) | Represents the "RichMediaContent" entry of the richmedia annotation object. |
|  | [inherited properties...](../1391-annotationelement/index.md) |
