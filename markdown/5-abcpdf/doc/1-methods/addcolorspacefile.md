# AddColorSpaceFile Function

Adds an ICC based color space to the document.

## Syntax

```csharp
int AddColorSpaceFile(string path)
```

## Params

| Name | Description |
| --- | --- |
| path | The path to the ICC color space file. |
| return | The Object ID of the newly added ColorSpace Object. |

## Notes

Adds an ICC based color space to the document returning the ID of the newly added object.

ICC Color Spaces allow the precise representation of colors in a device independent way. The ICC format is defined by the International Color Consortium (http://www.color.org/).

ABCpdf will allow you to add ICC profiles in the Gray, RGB, CMYK or Lab color spaces. This method will throw an error if the file is inaccessible or invalid.

The current color space is defined by the ColorSpace property. The current color is defined by the Color property. The ColorSpace is used when the Color is of a matching type. If the color type does not match then the default - device - color space is used.

For example you add a CMYK color space and assign it to the ColorSpace property. All CMYK Colors you use will be defined in terms of this color space. However RGB and Grayscale colors will continue to be defined in terms of the default - device - color spaces.

## Example

In this example we add some CMYK text defined in an ICC based 
            color space.

```csharp
using var doc = new Doc();
string text = "Gallia est omnis divisa in partes tres, quarum unam incolunt Belgae, aliam Aquitani, tertiam qui ipsorum lingua Celtae, nostra Galli appellantur.";
doc.Rect.Inset(20, 40);
doc.FontSize = 96;
string path = Server.MapPath("../mypics/cmyk.icc");
doc.ColorSpace = doc.AddColorSpaceFile(path);
doc.Color.String = "200 20 20 20";
doc.AddText(text);
doc.Save(Server.MapPath("docaddcolorspacefile.pdf")); // Windows specific);
```

