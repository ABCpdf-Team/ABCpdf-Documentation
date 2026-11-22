# Palette Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`XPalette`](../../xpalette/1-methods/01-xpalette.md) | See notes. | No | A color palette to be used. |

## Notes

A color palette to be used when exporting using a [ColorSpace](colorspace.md) of Indexed.

When reducing colors, there are different ways to choose such colors. The method used is dependent on the [XPalette.Definition](../../xpalette/2-properties/01-definition.md).

The default value for this is a default palette - Adaptive with 256 colors.
