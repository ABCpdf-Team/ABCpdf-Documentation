# CheckboxFieldElement Class

This class represents the checkbox field dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 227, page 441.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=449)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 230, page 534.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it inherits from FieldElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FieldElement`](../1440-fieldelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.CheckboxFieldElement`

A checkbox field holds a boolean state presented as a ticked or unticked box. The field value is a PDF name matching one of the on-state names defined in its appearance dictionary, or the name Off when unticked.

Because the class inherits from FieldElement it participates in the full field hierarchy including shared flags, default values, and additional-action triggers.

The field flags integer inherited from FieldElement controls button-field behaviour. For checkboxes the relevant flag bits govern whether the widget can be set without an off state and whether the viewer should generate the appearance stream automatically.

## Methods

| Method | Description |
| --- | --- |
| [CheckboxFieldElement](1-methods/01-checkboxfieldelement.md) | Create a new CheckboxFieldElement. |
|  | [inherited methods...](../1440-fieldelement/index.md) |

## Properties

| Property | Description |
| :---: | --- |
|  | [inherited properties...](../1440-fieldelement/index.md) |
