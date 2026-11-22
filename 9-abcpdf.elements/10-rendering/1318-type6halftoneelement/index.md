# Type6HalftoneElement Class

This class represents the type 6 halftone dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 131, page 310.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=318)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 129, page 372.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.HalftoneElement`](../1316-halftoneelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type6HalftoneElement`

A type 6 halftone uses a pre-computed threshold table rather than a spot function. Each cell in the table holds a byte value from 0 to 255. To decide whether a given device pixel is on or off, the viewer compares the current tint level against the threshold at that pixel position: the pixel is on if the tint exceeds the threshold.

The table is stored as the body of the stream. Width and Height define its dimensions. The stream must contain exactly Width times Height bytes. The table tiles repeatedly across the output area to cover the full page.

Because each sample is one byte, this type offers 256 distinct threshold levels. That is enough for smooth gradients in most workflows, but the table can become large if high screen rulings are needed, since a finer ruling means more samples per inch.

Unlike type 1, there is no spot function or angle entry. The shape and orientation of the screen are embedded implicitly in the layout of the threshold values. Changing the apparent screen angle requires a different table.

TransferFunction adjusts tint values before they are compared against the table. A function object maps input levels to corrected output levels. The name Identity leaves the tint unchanged. The purpose is the same as in type 1: compensating for device characteristics such as dot gain.

## Methods

| Method | Description |
| --- | --- |
| [Type6HalftoneElement](1-methods/01-type6halftoneelement.md) | Create a new Type6HalftoneElement. |
|  | [inherited methods...](../1316-halftoneelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryHalftoneName](2-properties/01-entryhalftonename.md) | Represents the "HalftoneName" entry of the type 6 halftone dictionary object. |
| [EntryWidth](2-properties/02-entrywidth.md) | Represents the "Width" entry of the type 6 halftone dictionary object. |
| [EntryHeight](2-properties/03-entryheight.md) | Represents the "Height" entry of the type 6 halftone dictionary object. |
| [EntryTransferFunction](2-properties/04-entrytransferfunction.md) | Represents the "TransferFunction" entry of the type 6 halftone dictionary object. |
|  | [inherited properties...](../1316-halftoneelement/index.md) |
