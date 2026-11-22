# NumberFormatElement Class

This class represents the number format dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 263, page 482.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=490)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 268, page 595.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.NumberFormatElement`

A number format dictionary describes how a measurement value is formatted and labelled for display, used in rectilinear measure dictionaries for distances, areas, angles, and slopes.

The U entry gives the unit label. The C entry is the conversion factor. The F entry selects decimal, fraction, or rounded display. The D entry gives the fraction denominator. RT and RD are thousands and decimal separators. PS and SS are prefix and suffix strings.

## Methods

| Method | Description |
| --- | --- |
| [NumberFormatElement](1-methods/01-numberformatelement.md) | Create a new NumberFormatElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the number format dictionary object. |
| [EntryU](2-properties/02-entryu.md) | Represents the "U" entry of the number format dictionary object. |
| [EntryC](2-properties/03-entryc.md) | Represents the "C" entry of the number format dictionary object. |
| [EntryF](2-properties/04-entryf.md) | Represents the "F" entry of the number format dictionary object. |
| [EntryD](2-properties/05-entryd.md) | Represents the "D" entry of the number format dictionary object. |
| [EntryFD](2-properties/06-entryfd.md) | Represents the "FD" entry of the number format dictionary object. |
| [EntryRT](2-properties/07-entryrt.md) | Represents the "RT" entry of the number format dictionary object. |
| [EntryRD](2-properties/08-entryrd.md) | Represents the "RD" entry of the number format dictionary object. |
| [EntryPS](2-properties/09-entryps.md) | Represents the "PS" entry of the number format dictionary object. |
| [EntrySS](2-properties/10-entryss.md) | Represents the "SS" entry of the number format dictionary object. |
| [EntryO](2-properties/11-entryo.md) | Represents the "O" entry of the number format dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
