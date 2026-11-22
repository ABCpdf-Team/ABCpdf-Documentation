# PolylineAnnotationElement Class

This class represents the polyline annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 178, page 402.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=410)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 181, page 487.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.PolylineAnnotationElement`

A polyline annotation draws an open multi-segment path between a list of vertex coordinates. Unlike a polygon annotation the path is not closed.

The Vertices entry lists coordinate pairs. The LE entry specifies line-end styles for the first and last vertices. The Path entry (PDF 2.0) allows curved segments.

## Methods

| Method | Description |
| --- | --- |
| [PolylineAnnotationElement](1-methods/01-polylineannotationelement.md) | Create a new PolylineAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryVertices](2-properties/01-entryvertices.md) | Represents the "Vertices" entry of the polyline annotation object. |
| [EntryLE](2-properties/02-entryle.md) | Represents the "LE" entry of the polyline annotation object. |
| [EntryBS](2-properties/03-entrybs.md) | Represents the "BS" entry of the polyline annotation object. |
| [EntryIC](2-properties/04-entryic.md) | Represents the "IC" entry of the polyline annotation object. |
| [EntryBE](2-properties/05-entrybe.md) | Represents the "BE" entry of the polyline annotation object. |
| [EntryIT](2-properties/06-entryit.md) | Represents the "IT" entry of the polyline annotation object. |
| [EntryMeasure](2-properties/07-entrymeasure.md) | Represents the "Measure" entry of the polyline annotation object. |
| [EntryPath](2-properties/08-entrypath.md) | Represents the "Path" entry of the polyline annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
