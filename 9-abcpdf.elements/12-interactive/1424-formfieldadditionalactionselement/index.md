# FormFieldAdditionalActionsElement Class

This class represents the form field additional-actions dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 196, page 416.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=424)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 199, page 505.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FormFieldAdditionalActionsElement`

A form field additional-actions dictionary associates actions with keystroke, format, validate, and calculate events during interaction with a form field.

The K (keystroke) action fires as the user types before the value is committed. The F (format) action fires after commit to control display formatting. The V (validate) action fires on focus loss. The C (calculate) action fires during the document's recalculation pass.

## Methods

| Method | Description |
| --- | --- |
| [FormFieldAdditionalActionsElement](1-methods/01-formfieldadditionalactionselement.md) | Create a new FormFieldAdditionalActionsElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryK](2-properties/01-entryk.md) | Represents the "K" entry of the form field additional-actions dictionary object. |
| [EntryF](2-properties/02-entryf.md) | Represents the "F" entry of the form field additional-actions dictionary object. |
| [EntryV](2-properties/03-entryv.md) | Represents the "V" entry of the form field additional-actions dictionary object. |
| [EntryC](2-properties/04-entryc.md) | Represents the "C" entry of the form field additional-actions dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
