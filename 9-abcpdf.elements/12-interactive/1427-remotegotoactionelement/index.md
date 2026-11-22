# RemoteGoToActionElement Class

This class represents the remote go-to action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 200, page 419.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=427)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 203, page 508.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.RemoteGoToActionElement`

A remote go-to action navigates to a destination in an external PDF file. The F entry identifies the target file. The D or SD entry identifies the destination within it. The NewWindow entry controls whether the target opens in a new window.

## Methods

| Method | Description |
| --- | --- |
| [RemoteGoToActionElement](1-methods/01-remotegotoactionelement.md) | Create a new RemoteGoToActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the remote go-to action object. |
| [EntryD](2-properties/02-entryd.md) | Represents the "D" entry of the remote go-to action object. |
| [EntryNewWindow](2-properties/03-entrynewwindow.md) | Represents the "NewWindow" entry of the remote go-to action object. |
| [EntrySD](2-properties/04-entrysd.md) | Represents the "SD" entry of the remote go-to action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
