# BlackPoint Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`XColor`](../../../5-abcpdf/xcolor/index.md) | n/a | No | The black point for the color space specified in CIE 1931 XYZ space |

## Notes

The black point for the color space specified in CIE 1931 XYZ space.

This property is only valid for color spaces in which the [ColorSpaceType](colorspacetype.md) is CallGray, CalRGB or Lab.

All components for this value must be non-negative. The default for this property is 0 0 0.

When you set this property a clone of the XColor you assign is created to avoid one XColor being shared by multiple color spaces.

## Example

See the [WhitePoint](whitepoint.md) property.

Also see example code in: [ColorSpace WhitePoint Property](whitepoint.md).
