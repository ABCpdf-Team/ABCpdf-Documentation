# RubberStampAnnotationElement Class

This class represents the rubber stamp annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 181, page 405.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=413)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 184, page 490.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.RubberStampAnnotationElement`

A rubber stamp annotation displays a text or graphical stamp on the page. The stamp's appearance is defined by a Name chosen from standard values such as Approved, Draft, Confidential, or Experimental.

Viewers render the chosen name as a stylised stamp. If the Name is not recognised the viewer renders the AP entry or falls back to a default rendering.

## Methods

| Method | Description |
| --- | --- |
| [RubberStampAnnotationElement](1-methods/01-rubberstampannotationelement.md) | Create a new RubberStampAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryName](2-properties/01-entryname.md) | Represents the "Name" entry of the rubber stamp annotation object. |
| [EntryIT](2-properties/02-entryit.md) | Represents the "IT" entry of the rubber stamp annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
