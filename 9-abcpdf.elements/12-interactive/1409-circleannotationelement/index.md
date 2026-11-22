# CircleAnnotationElement Class

This class represents the circle annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 177, page 401.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=409)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 180, page 486.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.CircleAnnotationElement`

A circle annotation draws an ellipse on the page. The interior can be filled with a separate interior colour, and the RD entry insets the ellipse from the annotation's Rect.

The BE entry applies a border effect such as a cloudy edge. When a cloud effect is used the RD inset ensures cloud arcs remain inside the annotation's total bounding box.

## Methods

| Method | Description |
| --- | --- |
| [CircleAnnotationElement](1-methods/01-circleannotationelement.md) | Create a new CircleAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryBS](2-properties/01-entrybs.md) | Represents the "BS" entry of the circle annotation object. |
| [EntryIC](2-properties/02-entryic.md) | Represents the "IC" entry of the circle annotation object. |
| [EntryBE](2-properties/03-entrybe.md) | Represents the "BE" entry of the circle annotation object. |
| [EntryRD](2-properties/04-entryrd.md) | Represents the "RD" entry of the circle annotation object. |
| [EntryIT](2-properties/05-entryit.md) | Represents the "IT" entry of the circle annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
