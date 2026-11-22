# FreeTextAnnotationElement Class

This class represents the free text annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 174, page 396.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=404)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 177, page 480.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.FreeTextAnnotationElement`

A free-text annotation displays text directly on the page at a specified location without an icon or separate pop-up window. The text is rendered using the default appearance string in the DA entry.

The Q entry controls text alignment. The CL entry supplies callout line coordinates. The LE entry specifies line-end styles for the callout, and RD insets the text bounding box from the outer Rect.

The IT entry classifies the annotation as a plain free-text annotation, a callout, or a typewriter annotation.

## Methods

| Method | Description |
| --- | --- |
| [FreeTextAnnotationElement](1-methods/01-freetextannotationelement.md) | Create a new FreeTextAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryDA](2-properties/01-entryda.md) | Represents the "DA" entry of the free text annotation object. |
| [EntryQ](2-properties/02-entryq.md) | Represents the "Q" entry of the free text annotation object. |
| [EntryDS](2-properties/03-entryds.md) | Represents the "DS" entry of the free text annotation object. |
| [EntryCL](2-properties/04-entrycl.md) | Represents the "CL" entry of the free text annotation object. |
| [EntryIT](2-properties/05-entryit.md) | Represents the "IT" entry of the free text annotation object. |
| [EntryBE](2-properties/06-entrybe.md) | Represents the "BE" entry of the free text annotation object. |
| [EntryRD](2-properties/07-entryrd.md) | Represents the "RD" entry of the free text annotation object. |
| [EntryBS](2-properties/08-entrybs.md) | Represents the "BS" entry of the free text annotation object. |
| [EntryLE](2-properties/09-entryle.md) | Represents the "LE" entry of the free text annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
