# EmbeddedGoToActionElement Class

This class represents the embedded go-to action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 201, page 420.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=428)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 204, page 510.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.EmbeddedGoToActionElement`

An embedded go-to action navigates to a destination within an embedded PDF file, traversing a chain of file attachments. The T entry is a target dictionary describing the path to the destination file.

The action can navigate from a parent PDF to an embedded child, from a child back to its parent, or between siblings.

## Methods

| Method | Description |
| --- | --- |
| [EmbeddedGoToActionElement](1-methods/01-embeddedgotoactionelement.md) | Create a new EmbeddedGoToActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the embedded go-to action object. |
| [EntryD](2-properties/02-entryd.md) | Represents the "D" entry of the embedded go-to action object. |
| [EntryNewWindow](2-properties/03-entrynewwindow.md) | Represents the "NewWindow" entry of the embedded go-to action object. |
| [EntryT](2-properties/04-entryt.md) | Represents the "T" entry of the embedded go-to action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
