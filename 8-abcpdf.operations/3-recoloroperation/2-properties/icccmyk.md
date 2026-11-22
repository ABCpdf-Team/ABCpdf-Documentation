# IccCmyk Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "standard" | No | The path to the default CMYK ICC color profile. |

## Notes

A path to the default CMYK ICC color profile.

For a device independent conversion both the source and destination color spaces must both have a color profile. They may have a color profile available because one has been embedded in the PDF, or one may be available as a fallback option via the IccCmyk, [IccRgb](iccrgb.md), [IccGray](iccgray.md) and [IccOutput](iccoutput.md) properties.

If profiles are available for both source and destination, the profile for the source may be used to convert any device CMYK colors to the device independent CIE working color space. From the working space the color can then be converted to the [DestinationColorSpace](destinationcolorspace.md).

If either the source or destination do not have a color profile then no accurate conversion is possible and simple mathematical formulas will be used to convert from the source color space to the destination.

This property can take a path to an icm file. If this property is set to a file name with no path information, then the system ICC color profile directory will be searched to locate the file.

However there are also two special values you can use. If the property takes the value "standard" then a built in default color profile will be used. If the property takes the value "device" then the output is device dependent - no fallback profile is available.

## Example

The following example illustrates how one could convert the first page of a PDF document so all colors and color spaces are in Lab format

Any DeviceCMYK color values are run though the CoatedGRACoL2006 ICC color profile for conversion to Lab.

We assign 96 to the Type0SampleCount which means that continuous shading functions are converted to Type 0 (sample based) functions with 96 samples.

```csharp
using var doc = new Doc();
doc.Read("../mypics/SpaceShuttlePage6.pdf");
var cs = new ColorSpace(doc.ObjectSoup, ColorSpaceType.Lab);
using (var op = new RecolorOperation()) {
  op.DestinationColorSpace = cs;
  op.IccCmyk = "../Rez/EuroscaleCoated.icc";
  op.Type0SampleCount = 96;
  op.RenderingIntent = RenderingIntent.Perceptual;
  op.Recolor((Page)doc.ObjectSoup[doc.Page]);
}
doc.Save("RecolorToLab.pdf");
```
