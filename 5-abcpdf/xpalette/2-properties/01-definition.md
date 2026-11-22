# Definition Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `PaletteDefinition` | Adaptive | No | The set of colors that may be used. |

## Notes

The set of colors that may be used.

The PaletteDefinition enumeration may take the following values:

- Adaptive - An optimized Octree algorithm for fast, high quality color reduction.
- WebSafe - A fixed number of colors compatible with Web colors.
- Windows - A fixed number of colors compatible with Windows colors.
- Macintosh - A fixed number of colors compatible with Macintosh colors.
- Uniform - A set of colors uniformly distributed throughout the color space.
- Grayscale - Use only grayscale colors.
- BlackAndWhite - Only two colors: black and white.
- Exact - Same as Adaptive but optimized to ensure an exact color match wherever possible.

An Adaptive palette uses a scan through the image to determine a good set of colors based on those most commonly used. It aims to produce a palette with [Size](05-size.md) colors. However it may use fewer colors than specified if the image has limited colors. This is the default option and the one you will most commonly want to use. Use in conjunction with the [FixedColors](04-fixedcolors.md) property to ensure that colors like black and white are always present.

WebSafe, Windows and Macintosh palettes are all fixed sets of 256 colors. For this reason the Size and FixedColors properties are ignored.

Uniform sets of colors exist for 8, 27, 64, 125 and 216 colors and so the number of colors used may be less than the Size you specify. The FixedColors property is ignored.

Grayscale palettes uses the exact number of gray values specified using the Size with a minimum of two. The FixedColors property is ignored.

Black&White palettes always uses two colors - black and white. The FixedColors property is ignored.

Exact palettes are very similar to Adaptive palettes except they are optimized to ensure an exact color match wherever possible. The precision required here comes at an extra cost in terms of memory use and processing speed. However in some situations, precision is more important than speed.
