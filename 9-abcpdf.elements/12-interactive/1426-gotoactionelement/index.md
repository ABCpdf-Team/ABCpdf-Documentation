# GoToActionElement Class

This class represents the go-to action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 199, page 418.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=426)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 202, page 507.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.GoToActionElement`

A go-to action navigates the current viewer to a destination within the same PDF file. The D entry holds either a direct destination array or a string naming an entry in the named destinations dictionary.

The SD entry holds a string-keyed named destination, an alternative to D that supports arbitrary Unicode destination names.

## Methods

| Method | Description |
| --- | --- |
| [GoToActionElement](1-methods/01-gotoactionelement.md) | Create a new GoToActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryD](2-properties/01-entryd.md) | Represents the "D" entry of the go-to action object. |
| [EntrySD](2-properties/02-entrysd.md) | Represents the "SD" entry of the go-to action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
