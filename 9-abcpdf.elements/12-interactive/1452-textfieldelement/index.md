# TextFieldElement Class

This class represents the text field. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 229, page 444.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=452)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 232, page 537.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.39a, page 46.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=46)

This class is always an indirect object because it inherits from FieldElement which is always an indirect object.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FieldElement`](../1440-fieldelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.TextFieldElement`

A text field allows the user to enter and edit plain or rich text. It inherits all FieldElement entries and adds only the DataPrep entry, which specifies how the field's text value is normalised before signing, ensuring signature validation is independent of line-ending conventions.

## Methods

| Method | Description |
| --- | --- |
| [TextFieldElement](1-methods/01-textfieldelement.md) | Create a new TextFieldElement. |
|  | [inherited methods...](../1440-fieldelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryDataPrep](2-properties/01-entrydataprep.md) | Represents the "DataPrep" entry of the text field object. |
|  | [inherited properties...](../1440-fieldelement/index.md) |
