# InkAnnotationElement Class

This class represents the ink annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 182, page 405.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=413)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 185, page 491.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.InkAnnotationElement`

An ink annotation records one or more freehand strokes, each a list of points rendered as a connected smooth curve. The InkList entry holds the array of strokes.

The Path entry (PDF 2.0) provides a compact alternate path representation supporting curved segments.

## Methods

| Method | Description |
| --- | --- |
| [InkAnnotationElement](1-methods/01-inkannotationelement.md) | Create a new InkAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryInkList](2-properties/01-entryinklist.md) | Represents the "InkList" entry of the ink annotation object. |
| [EntryBS](2-properties/02-entrybs.md) | Represents the "BS" entry of the ink annotation object. |
| [EntryIT](2-properties/03-entryit.md) | Represents the "IT" entry of the ink annotation object. |
| [EntryPath](2-properties/04-entrypath.md) | Represents the "Path" entry of the ink annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
