# RadioFieldElement Class

This class represents the radio field dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 227, page 441.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=449)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 230, page 534.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from FieldElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FieldElement`](../1440-fieldelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.RadioFieldElement`

A radio button field is a button field where exactly one button in a group may be on at a time. The group is formed by all button field widgets sharing the same fully qualified field name.

Because the class inherits from FieldElement it participates in the full field hierarchy. The NoToggleToOff flag controls whether the currently selected button can be clicked off without selecting another, and RadiosInUnison controls whether widgets with the same on-state value toggle together.

## Methods

| Method | Description |
| --- | --- |
| [RadioFieldElement](1-methods/01-radiofieldelement.md) | Create a new RadioFieldElement. |
|  | [inherited methods...](../1440-fieldelement/index.md) |

## Properties

| Property | Description |
| :---: | --- |
|  | [inherited properties...](../1440-fieldelement/index.md) |
