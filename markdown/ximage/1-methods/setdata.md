# SetData Function

Load an image from data.

## Syntax

```csharp
void SetData(byte[] data)
```

## Params

| Name | Description |
| --- | --- |
| data | The data containing the graphic. |

## Notes

Load an image from data. The data is expected to be provided as an array of bytes.

The data can be any of the following types: JPEG, GIF, TIFF, BMP, PNG, PSD, PDB, EXIF, WMF, EMF, EPS, PS or SWF (Flash).

Ultimately each import goes through a ReadModule so for details of additional formats supported and the way they are imported, see the ReadModule property.

Different images within the file can be accessed using the Frame property. Different portions of the image can be selected using the Selection property.

## Example

Here we read a TIFF file and present the data to the XImage 
            object. We then add the image to our document and then save the 
            PDF.

```csharp
using var img = new XImage();
using var doc = new Doc();
// read the data from a file
string path = Server.MapPath("../mypics/mypic.jpg");
using var stream = File.OpenRead(path);
byte[] theData = new byte[stream.Length];
stream.Read(theData, 0, (int)stream.Length);
// place the data into the image
img.SetData(theData);
doc.Rect.Inset(20, 20);
doc.AddImageObject(img, false);
doc.Save(Server.MapPath("imagesetdata.pdf")); // Windows specific);
```

## Results

![imagesetdata.pdf](../../../../images/pdf/imagesetdata.pdf.png) — imagesetdata.pdf
