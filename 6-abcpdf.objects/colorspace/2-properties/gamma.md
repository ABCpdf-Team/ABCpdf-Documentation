# Gamma Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Atom` | n/a | No | The gamma correction for the color space |

## Notes

The gamma correction for the color space.

This property is only valid for color spaces in which the [ColorSpaceType](colorspacetype.md) is CalGray or CalRGB.

Gamma is defined for each component of a calibrated color space. So for a CalGray color space it has one entry and for a CalRGB color space it has three.

This means that for a CalGray color space this property will be a NumAtom and for a CalRGB color space it will be an ArrayAtom with three entries.

Each gamma entry must be positive and is generally greater than or equal to one.

## Example

In this example we show how to use the Gamma property with a calibrated grayscale color space.

```csharp
using var doc = new Doc();
doc.Width = 80;
doc.Rect.Inset(50, 50);
var cs = new ColorSpace(doc.ObjectSoup, ColorSpaceType.CalGray);
((NumAtom)cs.Gamma).Real = 1.2;
doc.ColorSpace = cs.ID;
doc.Color.SetComponents(0.9); // gray
doc.AddOval(true);
doc.Save("examplecalgraycolorspace.pdf");
```

![examplecalgraycolorspace.pdf](../../../images/pdf/examplecalgraycolorspace.pdf.png)  
examplecalgraycolorspace.pdf
