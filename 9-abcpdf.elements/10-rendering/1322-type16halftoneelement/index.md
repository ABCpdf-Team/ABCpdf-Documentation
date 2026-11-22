# Type16HalftoneElement Class

This class represents the type 16 halftone dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 133, page 314.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=322)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 131, page 376.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.HalftoneElement`](../1316-halftoneelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type16HalftoneElement`

A type 16 halftone works on the same principle as type 6 but stores two-byte samples instead of one-byte samples. Each 16-bit value gives 65536 possible threshold levels, which allows finer tonal control and is better suited to high-bit-depth colour workflows where eight-bit thresholds would introduce visible banding.

The first array is always present. Width and Height give its dimensions in samples, and its data occupies Width times Height times two bytes in the stream body.

A second array is optional. When Width2 and Height2 are both present, the halftone uses a two-array layout that gives the same non-rectangular cell geometry as type 10, allowing more accurate screen angles. The second array follows the first in the stream with no gap.

When only the first array is used, the cell is rectangular. When both arrays are present, the cell is a parallelogram formed by combining the two square regions, analogous to the Xsquare and Ysquare approach in type 10.

TransferFunction works as in other threshold types. The name Identity leaves tint values unchanged; a function object maps each input level to a corrected output before the threshold comparison. The extra tonal resolution of 16-bit samples means the transfer function can make finer adjustments than it could with an 8-bit table.

## Methods

| Method | Description |
| --- | --- |
| [Type16HalftoneElement](1-methods/01-type16halftoneelement.md) | Create a new Type16HalftoneElement. |
|  | [inherited methods...](../1316-halftoneelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryHalftoneName](2-properties/01-entryhalftonename.md) | Represents the "HalftoneName" entry of the type 16 halftone dictionary object. |
| [EntryWidth](2-properties/02-entrywidth.md) | Represents the "Width" entry of the type 16 halftone dictionary object. |
| [EntryHeight](2-properties/03-entryheight.md) | Represents the "Height" entry of the type 16 halftone dictionary object. |
| [EntryWidth2](2-properties/04-entrywidth2.md) | Represents the "Width2" entry of the type 16 halftone dictionary object. |
| [EntryHeight2](2-properties/05-entryheight2.md) | Represents the "Height2" entry of the type 16 halftone dictionary object. |
| [EntryTransferFunction](2-properties/06-entrytransferfunction.md) | Represents the "TransferFunction" entry of the type 16 halftone dictionary object. |
|  | [inherited properties...](../1316-halftoneelement/index.md) |
