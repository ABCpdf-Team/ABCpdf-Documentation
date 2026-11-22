# Type1PatternElement Class

This class represents the type 1 pattern dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 75, page 174.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=182)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 74, page 218.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A Type 1 pattern, also called a tiling pattern, repeats a PDF content stream at regular intervals to fill a target region. The content stream is painted into a pattern cell, and the cell is then tiled across the area to be filled or stroked.

The pattern cell is defined by its bounding box (BBox). The cell is painted in pattern space, which is mapped to user space by the pattern's matrix.

XStep and YStep define the horizontal and vertical spacing between pattern cell origins. These values may differ from the BBox dimensions, creating gaps or allowing content outside the BBox to be clipped.

The PaintType entry controls whether the pattern defines its own colors or inherits the current color at paint time. PaintType 1 is a colored pattern; PaintType 2 is uncolored and requires a color to be specified separately.

The TilingType entry controls how the pattern cell is scaled and aligned relative to device pixels. The three options offer trade-offs between visual consistency and exact spacing.

The Resources entry holds any resources needed by the pattern content stream, such as fonts, images, or other patterns. These resources are local to the pattern and may differ from the page's resource dictionary.

The Matrix entry maps pattern space to the default user space of the page or form in which the pattern is used. Changing the matrix allows the pattern to be rotated, scaled, or sheared without altering its content stream.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.PatternElement`](../1181-patternelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type1PatternElement`

## Methods

| Method | Description |
| --- | --- |
| [Type1PatternElement](1-methods/01-type1patternelement.md) | Create a new Type1PatternElement. |
|  | [inherited methods...](../1181-patternelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [StreamElement](2-properties/01-streamelement.md) | The StreamElement associated with this class. |
| [EntryPatternType](2-properties/02-entrypatterntype.md) | Represents the "PatternType" entry of the type 1 pattern dictionary object. |
| [EntryPaintType](2-properties/03-entrypainttype.md) | Represents the "PaintType" entry of the type 1 pattern dictionary object. |
| [EntryTilingType](2-properties/04-entrytilingtype.md) | Represents the "TilingType" entry of the type 1 pattern dictionary object. |
| [EntryBBox](2-properties/05-entrybbox.md) | Represents the "BBox" entry of the type 1 pattern dictionary object. |
| [EntryXStep](2-properties/06-entryxstep.md) | Represents the "XStep" entry of the type 1 pattern dictionary object. |
| [EntryYStep](2-properties/07-entryystep.md) | Represents the "YStep" entry of the type 1 pattern dictionary object. |
| [EntryResources](2-properties/08-entryresources.md) | Represents the "Resources" entry of the type 1 pattern dictionary object. |
| [EntryMatrix](2-properties/09-entrymatrix.md) | Represents the "Matrix" entry of the type 1 pattern dictionary object. |
|  | [inherited properties...](../1181-patternelement/index.md) |
