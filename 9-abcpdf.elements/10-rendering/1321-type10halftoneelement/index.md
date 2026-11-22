# Type10HalftoneElement Class

This class represents the type 10 halftone dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 132, page 313.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=321)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 130, page 375.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.HalftoneElement`](../1316-halftoneelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type10HalftoneElement`

A type 10 halftone is similar to type 6 in that it stores threshold data as stream bytes, but it replaces the simple rectangular cell with a pair of square regions. Together these regions tile to form a parallelogram-shaped cell, which allows the screen to follow irrational angles far more closely than a rectangular grid can.

Xsquare and Ysquare give the side lengths of the two square regions. The total number of threshold bytes in the stream is Xsquare squared plus Ysquare squared. The first region occupies the first Xsquare-squared bytes; the second region follows immediately.

The non-rectangular geometry is useful when screen angle accuracy matters, for example in multi-colorant printing where even a small angle error between separations can produce visible moire patterns.

As with type 6, each sample is one byte giving 256 threshold levels. TransferFunction adjusts tint values before the threshold comparison, with the Identity name serving as a pass-through and a function object providing custom correction.

## Methods

| Method | Description |
| --- | --- |
| [Type10HalftoneElement](1-methods/01-type10halftoneelement.md) | Create a new Type10HalftoneElement. |
|  | [inherited methods...](../1316-halftoneelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryHalftoneName](2-properties/01-entryhalftonename.md) | Represents the "HalftoneName" entry of the type 10 halftone dictionary object. |
| [EntryXsquare](2-properties/02-entryxsquare.md) | Represents the "Xsquare" entry of the type 10 halftone dictionary object. |
| [EntryYsquare](2-properties/03-entryysquare.md) | Represents the "Ysquare" entry of the type 10 halftone dictionary object. |
| [EntryTransferFunction](2-properties/04-entrytransferfunction.md) | Represents the "TransferFunction" entry of the type 10 halftone dictionary object. |
|  | [inherited properties...](../1316-halftoneelement/index.md) |
