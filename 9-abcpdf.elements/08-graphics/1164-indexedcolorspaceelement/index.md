# IndexedColorSpaceElement Class

This class represents an indexed color space.

Indexed color spaces represent a set of colors from a palette. Each color is identified using an index into the palette.

The palette itself needs to be defined in terms of another color space such as DeviceRGB or DeviceCMYK. So in many ways an indexed color space is a meta color space.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Section: 8.6.6.3, page 156.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=164)

An Indexed color space maps a single integer component to a full color sample in an underlying color space. It works as a lookup table: the integer selects a row in a table, and the row holds the actual color components.

The base color space defines the type and number of components of each entry in the lookup table. It can be any color space except another Indexed or Pattern space.

The hival value sets the highest valid index. Indices must be in the range 0 to hival inclusive. The lookup table therefore contains hival + 1 entries.

The lookup table is stored as either a string or a stream. Its total byte length must equal (hival + 1) multiplied by the number of components per entry in the base color space.

Indexed color spaces are compact: each pixel requires only one byte rather than the three or four bytes needed for full RGB or CMYK samples. This makes them efficient for images with limited palettes.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`](../0020-colorspaceelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.IndexedColorSpaceElement`

## Methods

| Method | Description |
| --- | --- |
| [IndexedColorSpaceElement](1-methods/01-indexedcolorspaceelement.md) | Create a new IndexedColorSpaceElement. |
|  | [inherited methods...](../0020-colorspaceelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryBaseColorSpace](2-properties/01-entrybasecolorspace.md) | This property represents the underlying color space for this Indexed color space. |
| [EntryHiVal](2-properties/02-entryhival.md) | This property represents the highest number used to index into the palette. |
| [EntryLookup](2-properties/03-entrylookup.md) | This property represents the lookup table for the palette. |
|  | [inherited properties...](../0020-colorspaceelement/index.md) |
