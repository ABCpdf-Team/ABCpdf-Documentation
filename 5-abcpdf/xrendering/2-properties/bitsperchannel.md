# BitsPerChannel Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 8 | No | The output bits per color channel. |

## Notes

This property determines the precision of the output color channels.

The value is specified in terms of the number of bits used to represent each channel of color. This can be 1, 8 or 16.

All color spaces support 8 and 16 bits per channel. Only the Gray color space supports 1 bit per channel - black and white.

For details of valid combinations see the [ColorSpace](colorspace.md) property.

## Example

See the [DefaultHalftone](defaulthalftone.md) property.

Also see example code in: [XRendering DefaultHalftone Property](defaulthalftone.md), [XRendering SaveCompression Property](savecompression.md).
