# PopUpAnnotationElement Class

This class represents the pop-up annotation. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 183, page 406.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=414)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 186, page 492.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because MarkupAnnotationElement.EntryPopup requires it to be so.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AnnotationElement`](../1391-annotationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.PopUpAnnotationElement`

A pop-up annotation presents the text of a markup annotation in a floating window. It carries no content of its own; text and author come from the parent markup annotation referenced by the Parent entry.

The Open entry records whether the pop-up window is currently open, allowing this state to be persisted across document saves.

## Methods

| Method | Description |
| --- | --- |
| [PopUpAnnotationElement](1-methods/01-popupannotationelement.md) | Create a new PopUpAnnotationElement. |
|  | [inherited methods...](../1391-annotationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryParent](2-properties/01-entryparent.md) | Represents the "Parent" entry of the pop-up annotation object. |
| [EntryOpen](2-properties/02-entryopen.md) | Represents the "Open" entry of the pop-up annotation object. |
|  | [inherited properties...](../1391-annotationelement/index.md) |
