# PatternColorSpaceElement Class

This class represents a pattern color space.

A pattern color space allows an area to be painted using a pattern of multiple colors rather than one single color.

Tiling patterns allow one image to be tiled across the area that needs painting.

Shading patterns allow a gradient to be painted across the area.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Section: 8.6.6.2, page 156.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=164)

The Pattern color space is the mechanism through which a content stream selects a pattern as the current color. It wraps any underlying color space for use with uncolored patterns, or stands alone for colored patterns.

When used with a colored (PaintType 1) pattern, no underlying color space is needed. When used with an uncolored (PaintType 2) pattern, the underlying color space determines the color that will be applied when the pattern is painted.

A content stream sets the Pattern color space with the CS or cs operator, and then sets the current pattern with the SCN or scn operator, naming a pattern resource from the resource dictionary.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ColorSpaceElement`](../0020-colorspaceelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.PatternColorSpaceElement`

## Methods

| Method | Description |
| --- | --- |
| [PatternColorSpaceElement](1-methods/01-patterncolorspaceelement.md) | Create a new PatternColorSpaceElement. |
|  | [inherited methods...](../0020-colorspaceelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryUnderlyingColorSpace](2-properties/01-entryunderlyingcolorspace.md) | This property represents the underlying color space for this pattern. |
|  | [inherited properties...](../0020-colorspaceelement/index.md) |
