# RectilinearMeasureElement Class

This class represents the rectilinear measure dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 262, page 481.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=489)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 267, page 594.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.MeasureElement`](../1488-measureelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.RectilinearMeasureElement`

A rectilinear measure dictionary maps page coordinates to real-world units using scale factors for each axis, used for engineering drawings and technical diagrams.

The R entry gives the scale ratio as a human-readable text string. The X and Y entries are arrays of number format dictionaries. D, A, T, and S entries hold format dictionaries for distance, area, angle, and slope. The O entry specifies the coordinate system origin.

## Methods

| Method | Description |
| --- | --- |
| [RectilinearMeasureElement](1-methods/01-rectilinearmeasureelement.md) | Create a new RectilinearMeasureElement. |
|  | [inherited methods...](../1488-measureelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryR](2-properties/01-entryr.md) | Represents the "R" entry of the rectilinear measure dictionary object. |
| [EntryX](2-properties/02-entryx.md) | Represents the "X" entry of the rectilinear measure dictionary object. |
| [EntryY](2-properties/03-entryy.md) | Represents the "Y" entry of the rectilinear measure dictionary object. |
| [EntryD](2-properties/04-entryd.md) | Represents the "D" entry of the rectilinear measure dictionary object. |
| [EntryA](2-properties/05-entrya.md) | Represents the "A" entry of the rectilinear measure dictionary object. |
| [EntryT](2-properties/06-entryt.md) | Represents the "T" entry of the rectilinear measure dictionary object. |
| [EntryS](2-properties/07-entrys.md) | Represents the "S" entry of the rectilinear measure dictionary object. |
| [EntryO](2-properties/08-entryo.md) | Represents the "O" entry of the rectilinear measure dictionary object. |
| [EntryCYX](2-properties/09-entrycyx.md) | Represents the "CYX" entry of the rectilinear measure dictionary object. |
|  | [inherited properties...](../1488-measureelement/index.md) |
