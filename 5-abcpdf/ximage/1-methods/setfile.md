# SetFile Function

Load an image from a file.

## Syntax

```csharp
void SetFile(string path)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| path | The path to the graphic file. |

## Notes

Load an image from file.

The file can be any of the following types: JPEG, GIF, TIFF, BMP, PNG, PSD, PDB, EXIF, WMF, EMF, EPS, PS or SWF (Flash).

Ultimately each import goes through a [ReadModule](../../xreadoptions/2-properties/1-readmodule.md) so for details of additional formats supported and the way they are imported, see the [ReadModule](../../xreadoptions/2-properties/1-readmodule.md) property.

Different images within the file can be accessed using the [Frame](../2-properties/frame.md) property. Different portions of the image can be selected using the [Selection](../2-properties/selection.md) property.

## Example

Here we open a TIFF file using the XImage object. After we've opened the file we add the image to our document and then save the PDF.

```csharp
using var img = new XImage();
using var doc = new Doc();
img.SetFile("../mypics/mypic.jpg");
doc.Rect.Inset(20, 20);
doc.AddImageObject(img, false);
doc.Save("imagesetfile.pdf");
```

![imagesetfile.pdf](../../../images/pdf/imagesetfile.pdf.png)  
imagesetfile.pdf

Also see example code in: [ABCpdf Image Example](../../../4-examples/04-image.md), [Doc AddImageObject Function](../../doc/1-methods/addimageobject.md), [Doc ColorSpace Property](../../doc/2-properties/colorspace.md), [XImage SetMask Function](setmask.md), [XImage Frame Property](../2-properties/frame.md), [XImage Selection Property](../2-properties/selection.md), [XRendering DefaultHalftone Property](../../xrendering/2-properties/defaulthalftone.md).
