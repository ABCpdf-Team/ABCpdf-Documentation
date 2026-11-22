# IccOutput Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "standard" | No | The path to the default output ICC color profile. |

## Notes

When recoloring to a [DestinationColorSpace](destinationcolorspace.md) one needs an ICC profile or set of calibration settings to describe the characteristics of the output device.

Normally these are held in the DestinationColorSpace itself and if this is the case, then this property is not required and is ignored.

However some color spaces like such as DeviceCMYK, DeviceRGB or DeviceGray do not have profiles because they are abstract and device dependent rather than specific to a particular device.

In this situation we need to find an ICC color profile we can use for the conversion. This property supplies the ICC color profile which will be used if the destination color space does not contain one.

The supplied ICC profile must be in the same color space family as the DestinationColorSpace. So if you are recoloring to DeviceRGB, be sure to provide an RGB ICC profile not a CMYK one.

This property can take a path to an icm file. If this property is set to a file name with no path information, then the system ICC color profile directory will be searched to locate the file.

However there are also two special values you can use. If the property takes the value "device" then the device color space will be used. If the property takes the value "standard" then a built in default color profile will be used.

If this property is set to "device" then simple mathematical formulas are used to convert components from one color space to another. Any color profiles in the PDF or in other properties will be ignored as every conversion involves a destination color space which has no profile.
