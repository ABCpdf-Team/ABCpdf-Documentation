# LineAnnotationElement Class

This class represents the line annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 175, page 398.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=406)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 178, page 482.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.LineAnnotationElement`

A line annotation draws a straight line between two points on the page and may display a label near the midpoint. It is used both for graphical markup and for dimension measurements.

The L entry gives start and end coordinates. The LE entry specifies line-end styles. The LL and LLE entries define leader lines for dimension annotations.

The Cap entry controls whether the Contents text is shown as a label. The Measure entry links to a rectilinear measure dictionary giving the real-world interpretation of the line length.

## Methods

| Method | Description |
| --- | --- |
| [LineAnnotationElement](1-methods/01-lineannotationelement.md) | Create a new LineAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryL](2-properties/01-entryl.md) | Represents the "L" entry of the line annotation object. |
| [EntryBS](2-properties/02-entrybs.md) | Represents the "BS" entry of the line annotation object. |
| [EntryLE](2-properties/03-entryle.md) | Represents the "LE" entry of the line annotation object. |
| [EntryIC](2-properties/04-entryic.md) | Represents the "IC" entry of the line annotation object. |
| [EntryLL](2-properties/05-entryll.md) | Represents the "LL" entry of the line annotation object. |
| [EntryLLE](2-properties/06-entrylle.md) | Represents the "LLE" entry of the line annotation object. |
| [EntryCap](2-properties/07-entrycap.md) | Represents the "Cap" entry of the line annotation object. |
| [EntryIT](2-properties/08-entryit.md) | Represents the "IT" entry of the line annotation object. |
| [EntryLLO](2-properties/09-entryllo.md) | Represents the "LLO" entry of the line annotation object. |
| [EntryCP](2-properties/10-entrycp.md) | Represents the "CP" entry of the line annotation object. |
| [EntryMeasure](2-properties/11-entrymeasure.md) | Represents the "Measure" entry of the line annotation object. |
| [EntryCO](2-properties/12-entryco.md) | Represents the "CO" entry of the line annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
