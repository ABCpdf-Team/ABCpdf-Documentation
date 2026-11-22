# FDFFieldElement Class

This class represents the fdf field dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 246, page 461.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=469)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 249, page 559.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FDFFieldElement`

An FDF field dictionary carries value and flags for one field in an FDF data transfer. The T entry gives the partial field name. The V entry holds the new field value to import.

SetFf and ClrFf apply targeted bit-mask changes to the target field's Ff flags. SetF and ClrF apply similar masks to the annotation's F flags. The AP and IF entries carry appearance data for button fields.

## Methods

| Method | Description |
| --- | --- |
| [FDFFieldElement](1-methods/01-fdffieldelement.md) | Create a new FDFFieldElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryKids](2-properties/01-entrykids.md) | Represents the "Kids" entry of the fdf field dictionary object. |
| [EntryT](2-properties/02-entryt.md) | Represents the "T" entry of the fdf field dictionary object. |
| [EntryV](2-properties/03-entryv.md) | Represents the "V" entry of the fdf field dictionary object. |
| [EntryFf](2-properties/04-entryff.md) | Represents the "Ff" entry of the fdf field dictionary object. |
| [EntrySetFf](2-properties/05-entrysetff.md) | Represents the "SetFf" entry of the fdf field dictionary object. |
| [EntryClrFf](2-properties/06-entryclrff.md) | Represents the "ClrFf" entry of the fdf field dictionary object. |
| [EntryF](2-properties/07-entryf.md) | Represents the "F" entry of the fdf field dictionary object. |
| [EntrySetF](2-properties/08-entrysetf.md) | Represents the "SetF" entry of the fdf field dictionary object. |
| [EntryClrF](2-properties/09-entryclrf.md) | Represents the "ClrF" entry of the fdf field dictionary object. |
| [EntryAP](2-properties/10-entryap.md) | Represents the "AP" entry of the fdf field dictionary object. |
| [EntryAPRef](2-properties/11-entryapref.md) | Represents the "APRef" entry of the fdf field dictionary object. |
| [EntryIF](2-properties/12-entryif.md) | Represents the "IF" entry of the fdf field dictionary object. |
| [EntryOpt](2-properties/13-entryopt.md) | Represents the "Opt" entry of the fdf field dictionary object. |
| [EntryA](2-properties/14-entrya.md) | Represents the "A" entry of the fdf field dictionary object. |
| [EntryAA](2-properties/15-entryaa.md) | Represents the "AA" entry of the fdf field dictionary object. |
| [EntryRV](2-properties/16-entryrv.md) | Represents the "RV" entry of the fdf field dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
