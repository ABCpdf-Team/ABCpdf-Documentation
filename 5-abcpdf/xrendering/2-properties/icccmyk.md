# IccCmyk Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "standard" | No | The path to the default CMYK ICC color profile. |

## Notes

A path to the default CMYK ICC color profile.

The profile that will be used to convert any device CMYK specified in the PDF file to the device independent working color space.

This is used when the output [ColorSpace](colorspace.md) is Lab or another device independent color space. If the [IccOutput](iccoutput.md) indicates that a color profile should be used the output is always device independent. If the IccOutput indicates that no color profile should be used then the output is always device dependent.

This property can take a path to an icm file. However there are also two special values you can use. If the property takes the value "device" then the device color space will be used. If the property takes the value "standard" then a built in default color profile will be used.

If this property is set to "standard" or a path to a color profile then [IccRgb](iccrgb.md), [IccCmyk](icccmyk.md), [IccGray](iccgray.md) and IccOutput should also be set to "standard" or paths to color profiles. All color spaces are assumed to be device independent color spaces.

If this property is set to "device" then IccRgb, IccCmyk, IccGray and IccOutput should also be set to "device". All color spaces are all assumed to be device color spaces.

If this property is set to a file name with no path information, then the system ICC color profile directory will be searched to locate the file.

## Example

The following example shows the effect that this parameter has on PDF rendering.

```csharp
using var doc = new Doc();
doc.Rect.Inset(20, 40);
doc.FontSize = 96;
// Add CMYK Content
doc.Color.String = "200 20 20 20";
doc.AddText("Gallia est omnis divisa in partes tres, quarum unam incolunt Belgae, aliam Aquitani, tertiam qui ipsorum lingua Celtae, nostra Galli appellantur.");
doc.Rect.String = doc.MediaBox.String;
doc.Rendering.DotsPerInch = 36;
doc.Rendering.IccCmyk = "../mypics/cmyk.icc";
doc.Rendering.ColorSpace = XRendering ColorSpaceType.Rgb;
// Save the image
doc.Rendering.Save("RenderingIccCmyk.png");
```

![RenderingIccCmyk.png](../../../images/pdf/RenderingIccCmyk.png)  
RenderingIccCmyk.png

Also see example code in: [XRendering Overprint Property](overprint.md).
