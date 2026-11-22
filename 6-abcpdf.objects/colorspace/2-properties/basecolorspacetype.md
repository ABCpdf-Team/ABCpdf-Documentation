# BaseColorSpaceType Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `ColorSpaceType` | n/a | Yes | The base type of color space. |

## Notes

The base color space is relevant for cases in which the [ColorSpaceType](colorspacetype.md) property is Indexed.

An Indexed color space contains a palette of colors indexed by number. Each item in the palette is a color in a different color space. As such the Indexed color space has a base color space in which the palette colors are defined.

This property allows you to determine the base color space for an Indexed color space. If the color space is not Indexed then this property is equal to the [ColorSpaceType](colorspacetype.md) property.
