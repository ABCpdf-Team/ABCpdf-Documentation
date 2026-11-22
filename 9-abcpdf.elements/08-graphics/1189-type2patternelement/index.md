# Type2PatternElement Class

This class represents the type 2 pattern dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 76, page 181.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=189)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 75, page 225.](https://www.iso.org/standard/63534.html)

A Type 2 pattern paints a shading directly without a repeating tile. The shading fills the area painted by the pattern, with the color varying continuously according to the shading's function and geometry.

The shading dictionary entry specifies all details of the gradient, including its type, color space, and the function that maps positions to colors.

The matrix entry maps pattern space to the default user space of the context in which the pattern is used. This allows the shading to be positioned, rotated, or scaled independently of the shading's internal coordinate system.

An extended graphics state may be attached via the ExtGState entry to control transparency or other rendering parameters when the shading pattern is painted.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.PatternElement`](../1181-patternelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.Type2PatternElement`

## Methods

| Method | Description |
| --- | --- |
| [Type2PatternElement](1-methods/01-type2patternelement.md) | Create a new Type2PatternElement. |
|  | [inherited methods...](../1181-patternelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryPatternType](2-properties/01-entrypatterntype.md) | Represents the "PatternType" entry of the type 2 pattern dictionary object. |
| [EntryShading](2-properties/02-entryshading.md) | Represents the "Shading" entry of the type 2 pattern dictionary object. |
| [EntryMatrix](2-properties/03-entrymatrix.md) | Represents the "Matrix" entry of the type 2 pattern dictionary object. |
| [EntryExtGState](2-properties/04-entryextgstate.md) | Represents the "ExtGState" entry of the type 2 pattern dictionary object. |
|  | [inherited properties...](../1181-patternelement/index.md) |
