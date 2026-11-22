# AlternateColorSpaceType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpaceType`](../../colorspace/2-properties/colorspacetype.md) | n/a | Yes | The alternate color space for this ICC color profile |

## Notes

The alternate color space for this ICC color profile.

The alternate color space generally indicates the base color space type such as DeviceRGB or DeviceCMYK. This is useful to know if you are attempting to find out the core type of color space referenced by an ICC color profile.

In the situation that no alternate color space is available, one can be generated using the [UpdateProfile](../1-methods/updateprofile.md) function.
