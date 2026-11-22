# IccGray Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "standard" | No | The path to the default Gray ICC color profile. |

## Notes

A path to the default Gray ICC color profile.

The profile that will be used to convert any device Gray specified in the PDF file to the device independent working color space. This may be necessary when colors in different color spaces need to be blended together.

This property can take a path to an icm file. However there are also two special values you can use. If the property takes the value "device" then the device color space will be used. If the property takes the value "standard" then a built in default color profile will be used.

If this property is set to "standard" or a path to a color profile then [IccRgb](iccrgb.md), [IccCmyk](icccmyk.md), [IccGray](iccgray.md) and IccOutput should also be set to "standard" or paths to color profiles. All color spaces are assumed to be device independent color spaces.

If this property is set to "device" then IccRgb, IccCmyk, IccGray and IccOutput should also be set to "device". All color spaces are all assumed to be device color spaces.

If this property is set to a file name with no path information, then the system ICC color profile directory will be searched to locate the file.
