# TextMarkupAnnotationElement Class

This class represents the text markup annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 179, page 403.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=411)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 182, page 489.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.TextMarkupAnnotationElement`

A text markup annotation highlights, underlines, strikes through, or squiggles a region of text. The specific visual effect is determined by the annotation Subtype: Highlight, Underline, StrikeOut, or Squiggly.

The QuadPoints entry defines the text region as a sequence of quadrilaterals, each enclosing one line of the marked text.

## Methods

| Method | Description |
| --- | --- |
| [TextMarkupAnnotationElement](1-methods/01-textmarkupannotationelement.md) | Create a new TextMarkupAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryQuadPoints](2-properties/01-entryquadpoints.md) | Represents the "QuadPoints" entry of the text markup annotation object. |
| [EntryIT](2-properties/02-entryit.md) | Represents the "IT" entry of the text markup annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
