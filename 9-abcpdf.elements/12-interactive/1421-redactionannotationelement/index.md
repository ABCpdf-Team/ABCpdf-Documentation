# RedactionAnnotationElement Class

This class represents the redaction annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 192, page 413.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=421)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 195, page 500.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from AnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.RedactionAnnotationElement`

A redaction annotation marks a region of a page for content removal. Creating the annotation is only the first step; the redaction is applied by a separate processing step that actually removes marked content.

The QuadPoints entry defines the regions to redact as quadrilaterals. The RO entry references a graphical overlay for the region before application. The OverlayText, Repeat, DA, and Q entries define the replacement text placed after content is removed.

## Methods

| Method | Description |
| --- | --- |
| [RedactionAnnotationElement](1-methods/01-redactionannotationelement.md) | Create a new RedactionAnnotationElement. |
|  | [inherited methods...](../1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryQuadPoints](2-properties/01-entryquadpoints.md) | Represents the "QuadPoints" entry of the redaction annotation object. |
| [EntryIC](2-properties/02-entryic.md) | Represents the "IC" entry of the redaction annotation object. |
| [EntryRO](2-properties/03-entryro.md) | Represents the "RO" entry of the redaction annotation object. |
| [EntryOverlayText](2-properties/04-entryoverlaytext.md) | Represents the "OverlayText" entry of the redaction annotation object. |
| [EntryRepeat](2-properties/05-entryrepeat.md) | Represents the "Repeat" entry of the redaction annotation object. |
| [EntryDA](2-properties/06-entryda.md) | Represents the "DA" entry of the redaction annotation object. |
| [EntryQ](2-properties/07-entryq.md) | Represents the "Q" entry of the redaction annotation object. |
|  | [inherited properties...](../1391-annotationelement/index.md) |
