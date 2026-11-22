# Components Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | The component intensities for the color. |

## Notes

The component intensities for the color. For example an RGB color has three values between zero and one, a CMYK color has four between zero and one.

Colors only make sense in the context of a color space that specifies what the components represent. Most components range between zero and one.

However some color spaces such as Lab have components with values outside this range.

The Components array holds the numeric color values for each channel of the color. The number of values must match the number of components required by the color space in which the color is used.

Component values are typically in the range 0 to 1, but some color spaces use different ranges. The color space definition governs how component values map to physical colorants.
