# DocumentPartGoToActionElement Class

This class represents the document part go-to action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 206, page 512.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.DocumentPartGoToActionElement`

A document part go-to action navigates the viewer to a specific document part within the same file. Document parts are used in PDF 2.0 to structure large documents into discrete, independently openable sections.

This action type was introduced in PDF 2.0 alongside the document part infrastructure, so it will not be understood by viewers that only support earlier PDF versions.

## Methods

| Method | Description |
| --- | --- |
| [DocumentPartGoToActionElement](1-methods/01-documentpartgotoactionelement.md) | Create a new DocumentPartGoToActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryDp](2-properties/01-entrydp.md) | Represents the "Dp" entry of the document part go-to action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
