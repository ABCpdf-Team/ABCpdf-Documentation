# ComboFieldElement Class

This class represents the combo field. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 231, page 445.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=453)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 234, page 539.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from FieldElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FieldElement`](../1440-fieldelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.ComboFieldElement`

A combo field presents a drop-down list of options and optionally allows the user to type a value not in the list. The TI (top index) entry records which option is scrolled to the top of the visible list. The I entry records the indices of selected items.

## Methods

| Method | Description |
| --- | --- |
| [ComboFieldElement](1-methods/01-combofieldelement.md) | Create a new ComboFieldElement. |
|  | [inherited methods...](../1440-fieldelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryTI](2-properties/01-entryti.md) | Represents the "TI" entry of the combo field object. |
| [EntryI](2-properties/02-entryi.md) | Represents the "I" entry of the combo field object. |
|  | [inherited properties...](../1440-fieldelement/index.md) |
