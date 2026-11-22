# PolygonAnnotationElement Class

This class represents the polygon annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 178, page 402.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=410)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 181, page 487.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.PolygonAnnotationElement`

A polygon annotation draws a closed shape defined by a list of vertex coordinates, stroked using the annotation colour and optionally filled with an interior colour.

The Vertices entry lists coordinate pairs in default user space. The Path entry (PDF 2.0) allows curved segments. The Measure entry links to a measure dictionary for real-world dimension interpretation.

## Methods

| Method | Description |
| --- | --- |
| [PolygonAnnotationElement](1-methods/01-polygonannotationelement.md) | Create a new PolygonAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryVertices](2-properties/01-entryvertices.md) | Represents the "Vertices" entry of the polygon annotation object. |
| [EntryLE](2-properties/02-entryle.md) | Represents the "LE" entry of the polygon annotation object. |
| [EntryBS](2-properties/03-entrybs.md) | Represents the "BS" entry of the polygon annotation object. |
| [EntryIC](2-properties/04-entryic.md) | Represents the "IC" entry of the polygon annotation object. |
| [EntryBE](2-properties/05-entrybe.md) | Represents the "BE" entry of the polygon annotation object. |
| [EntryIT](2-properties/06-entryit.md) | Represents the "IT" entry of the polygon annotation object. |
| [EntryMeasure](2-properties/07-entrymeasure.md) | Represents the "Measure" entry of the polygon annotation object. |
| [EntryPath](2-properties/08-entrypath.md) | Represents the "Path" entry of the polygon annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
