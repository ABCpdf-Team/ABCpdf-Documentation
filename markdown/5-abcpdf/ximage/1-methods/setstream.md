# SetStream Function

Load an image from stream.

## Syntax

```csharp
void SetStream(Stream stream)
```

## Params

| Name | Description |
| --- | --- |
| Stream | The stream containing the graphic. |

## Notes

Load an image from stream.

The stream can contain any of the following types: JPEG, GIF, TIFF, BMP, PNG, PSD, PDB, EXIF, WMF, EMF, EPS, PS or SWF (Flash).

Ultimately each import goes through a ReadModule so for details of additional formats supported and the way they are imported, see the ReadModule property.

Different images within the file can be accessed using the Frame property. Different portions of the image can be selected using the Selection property.

## Example

Here we read a TIFF file and present the data to the XImage 
            object. We then add the image to our document and then save the 
            PDF.

```csharp
using var img = new XImage();
string path = Server.MapPath("../mypics/mypic.jpg");
using var stream = File.OpenRead(path);
img.SetStream(stream);
using var doc = new Doc();
doc.Rect.Inset(20, 20);
doc.AddImageObject(img, false);
doc.Save(Server.MapPath("imagesetstream.pdf")); // Windows specific);
```

## Results

![imagesetstream.pdf](../../../../images/pdf/imagesetfile.pdf.png) — imagesetstream.pdf
