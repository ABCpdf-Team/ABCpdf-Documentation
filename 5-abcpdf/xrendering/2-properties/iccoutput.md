# IccOutput Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "standard" | No | The path to the default output ICC color profile. |

## Notes

A path to the default output ICC color profile.

Rendering can occur to either an device color space or to a device independent color space. By specifying an output color profile you are telling ABCpdf the characteristics of the output device independent color space you wish to use.

This property can take a path to an icm file. However there are also two special values you can use. If the property takes the value "device" then the device color space will be used. If the property takes the value "standard" then a built in default color profile will be used.

If this property is set to "standard" or a path to a color profile then [IccRgb](iccrgb.md), [IccCmyk](icccmyk.md) and [IccGray](iccgray.md) should also be set to "standard" or paths to color profiles. All color spaces are assumed to be device independent color spaces.

If this property is set to "device" then IccRgb, IccCmyk and IccGray should also be set to "device". All color spaces are all assumed to be device color spaces.

If this property is set to a file name with no path information, then the folder system ICC color profile directory will be searched to locate the file.

## Example

Also see example code in: [XRendering Overprint Property](overprint.md).
