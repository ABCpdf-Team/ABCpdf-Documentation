# ColorSpace Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The current ColorSpace ID. |

## Notes

The current color space.

The ColorSpace is used when the [Color](color.md) is of a matching type. If the color type does not match then the default - device - color space is used.

For example you add a CMYK color space and assign it to the ColorSpace property. All CMYK Colors you use will be defined in terms of this color space. However RGB and Grayscale colors will continue to be defined in terms of the default - device - color spaces.

To get a ColorSpace ID you need to add your color space to the current document using the [AddColorSpaceFile](../1-methods/addcolorspacefile.md) or [AddColorSpaceSpot](../1-methods/addcolorspacespot.md) method.

## Example

The following code shows how to colorize an image. It adds a base image to the current page and converts it to grayscale. Then it creates a new spot color space and assigns the new color space to the image.

```csharp
using var doc = new Doc();
doc.Rect.Inset(20, 20);

using var img = new XImage();
img.SetFile("../mypics/mypic.jpg");
int id = doc.AddImageObject(img, false);

id = doc.GetInfoInt(id, "XObject");
doc.SetInfo(id, "Grayscale", "");

int theCS = doc.AddColorSpaceSpot("MAGENTA", "0 100 0 0");
doc.SetInfo(id, "/ColorSpace:Ref", theCS.ToString());
doc.SetInfo(id, "/Decode", "[1 0]");

doc.Save("doccolorspace.pdf");
```

![doccolorspace.pdf](../../../images/pdf/doccolorspace.pdf.png)  
doccolorspace.pdf

Also see example code in: [Doc AddColorSpaceFile Function](../1-methods/addcolorspacefile.md), [Doc AddColorSpaceSpot Function](../1-methods/addcolorspacespot.md), [XColor Components Property](../../xcolor/2-properties/components.md), [ColorSpace Gamma Property](../../../6-abcpdf.objects/colorspace/2-properties/gamma.md), [ColorSpace WhitePoint Property](../../../6-abcpdf.objects/colorspace/2-properties/whitepoint.md).
