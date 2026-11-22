# ResetFormActionElement Class

This class represents the reset-form action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 238, page 455.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=463)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 241, page 552.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.ResetFormActionElement`

A reset-form action restores specified form fields to their default values. The Fields entry lists the fields, and Flags bit 1 controls whether listed fields are reset (Include) or all others are reset (Exclude).

## Methods

| Method | Description |
| --- | --- |
| [ResetFormActionElement](1-methods/01-resetformactionelement.md) | Create a new ResetFormActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryFields](2-properties/01-entryfields.md) | Represents the "Fields" entry of the reset-form action object. |
| [EntryFlags](2-properties/02-entryflags.md) | Represents the "Flags" entry of the reset-form action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
