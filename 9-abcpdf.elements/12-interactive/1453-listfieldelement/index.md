# ListFieldElement Class

This class represents the list field. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 231, page 445.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=453)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 234, page 539.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from FieldElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FieldElement`](../1440-fieldelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.ListFieldElement`

A list field presents a scrollable list of options from which the user selects one or more items. TI records the scroll position and I records the indices of all currently selected items. Whether multiple selection is allowed is controlled by the MultiSelect flag bit in Ff.

## Methods

| Method | Description |
| --- | --- |
| [ListFieldElement](1-methods/01-listfieldelement.md) | Create a new ListFieldElement. |
|  | [inherited methods...](../1440-fieldelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryTI](2-properties/01-entryti.md) | Represents the "TI" entry of the list field object. |
| [EntryI](2-properties/02-entryi.md) | Represents the "I" entry of the list field object. |
|  | [inherited properties...](../1440-fieldelement/index.md) |
