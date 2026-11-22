# TextAnnotationElement Class

This class represents the text annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 172, page 394.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=402)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 175, page 478.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from MarkupAnnotationElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.MarkupAnnotationElement`](../1399-markupannotationelement/index.md)  
`             WebSupergoo.ABCpdf14.Elements.TextAnnotationElement`

A text annotation (sticky note) displays a comment at a point on the page, represented by an icon. The comment text appears when the user opens the annotation.

The Name entry selects the icon shape. The State and StateModel entries implement a review and marking workflow, tracking whether the annotation has been marked, accepted, rejected, cancelled, or completed.

## Methods

| Method | Description |
| --- | --- |
| [TextAnnotationElement](1-methods/01-textannotationelement.md) | Create a new TextAnnotationElement. |
|  | [inherited methods...](../1399-markupannotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryOpen](2-properties/01-entryopen.md) | Represents the "Open" entry of the text annotation object. |
| [EntryName](2-properties/02-entryname.md) | Represents the "Name" entry of the text annotation object. |
| [EntryState](2-properties/03-entrystate.md) | Represents the "State" entry of the text annotation object. |
| [EntryStateModel](2-properties/04-entrystatemodel.md) | Represents the "StateModel" entry of the text annotation object. |
| [EntryIT](2-properties/05-entryit.md) | Represents the "IT" entry of the text annotation object. |
|  | [inherited properties...](../1399-markupannotationelement/index.md) |
