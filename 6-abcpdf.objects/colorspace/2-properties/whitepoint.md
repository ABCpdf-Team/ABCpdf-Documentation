# WhitePoint Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`XColor`](../../../5-abcpdf/xcolor/index.md) | n/a | No | The white point for the color space specified in CIE 1931 XYZ space |

## Notes

The white point for the color space specified in CIE 1931 XYZ space.

This property is only valid for color spaces in which the [ColorSpaceType](colorspacetype.md) is CallGray, CalRGB or Lab.

X and Z must be greater than zero and Y must be one. The default for this property is 0 1 0.

When you set this property a clone of the XColor you assign is created to avoid one XColor being shared by multiple color spaces.

## Example

In this example we show how to use the WhitePoint and [BlackPoint](blackpoint.md) with a calibrated RGB color space.

```csharp
using var doc = new Doc();
doc.Width = 80;
doc.Rect.Inset(50, 50);
var cs = new ColorSpace(doc.ObjectSoup, ColorSpaceType.CalRGB);
cs.WhitePoint.SetComponents(0.9, 1.0, 1.1);
cs.BlackPoint = XColor.FromComponents(0.1, 0.1, 0.1);
doc.ColorSpace = cs.ID;
doc.Color.SetComponents(0.9, 0.1, 0.1); // red
doc.AddOval(true);
doc.Save("examplecalrgbcolorspace.pdf");
```

![examplecalrgbcolorspace.pdf](../../../images/pdf/examplecalrgbcolorspace.pdf.png)  
examplecalrgbcolorspace.pdf
