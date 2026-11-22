# LinkAnnotationElement Class

This class represents the link annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 173, page 394.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=402)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 176, page 479.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from AnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.LinkAnnotationElement`

A link annotation activates a destination or action when the user interacts with the region it covers. It is the primary mechanism for clickable hyperlinks and cross-references in PDF.

Either the A or the Dest entry must be present, but not both. The QuadPoints entry refines the active region beyond the rectangular Rect, allowing a link to track non-rectangular text runs.

The H entry selects the visual feedback shown while the link is being activated: invert, outline, push, or none.

## Methods

| Method | Description |
| --- | --- |
| [LinkAnnotationElement](1-methods/01-linkannotationelement.md) | Create a new LinkAnnotationElement. |
|  | [inherited methods...](../1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryA](2-properties/01-entrya.md) | Represents the "A" entry of the link annotation object. |
| [EntryDest](2-properties/02-entrydest.md) | Represents the "Dest" entry of the link annotation object. |
| [EntryH](2-properties/03-entryh.md) | Represents the "H" entry of the link annotation object. |
| [EntryPA](2-properties/04-entrypa.md) | Represents the "PA" entry of the link annotation object. |
| [EntryQuadPoints](2-properties/05-entryquadpoints.md) | Represents the "QuadPoints" entry of the link annotation object. |
| [EntryBS](2-properties/06-entrybs.md) | Represents the "BS" entry of the link annotation object. |
|  | [inherited properties...](../1391-annotationelement/index.md) |
