# PushbuttonFieldElement Class

This class represents the pushbutton field dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 440.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=448)

This class is always an indirect object because it inherits from FieldElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FieldElement`](../1440-fieldelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.PushbuttonFieldElement`

A pushbutton field has no persistent value and triggers an action when activated. It uses its appearance characteristics dictionary to define the label and icon shown in its normal, rollover, and down states.

Because the class inherits from FieldElement it participates in the full field hierarchy including shared flags and additional-action triggers. The button-specific flags in the inherited EntryFf govern whether only an icon is shown, only a label, or both.

## Methods

| Method | Description |
| --- | --- |
| [PushbuttonFieldElement](1-methods/01-pushbuttonfieldelement.md) | Create a new PushbuttonFieldElement. |
|  | [inherited methods...](../1440-fieldelement/index.md) |

## Properties

| Property | Description |
| :---: | --- |
|  | [inherited properties...](../1440-fieldelement/index.md) |
