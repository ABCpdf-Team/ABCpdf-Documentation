# SetFile Function

Load an image from a file.

## Syntax

```csharp
void SetFile(string path)
```

## Params

| Name | Description |
| --- | --- |
| path | The path to the graphic file. |

## Notes

Load an image from file.

The file can be any of the following types: JPEG, GIF, TIFF, BMP, PNG, PSD, PDB, EXIF, WMF, EMF, EPS, PS or SWF (Flash).

Ultimately each import goes through a ReadModule so for details of additional formats supported and the way they are imported, see the ReadModule property.

Different images within the file can be accessed using the Frame property. Different portions of the image can be selected using the Selection property.

## Example

Here we open a TIFF file using the XImage object. After we've 
            opened the file we add the image to our document and then save the 
            PDF.

```csharp
using var img = new XImage();
using var doc = new Doc();
img.SetFile(Server.MapPath("../mypics/mypic.jpg"));
doc.Rect.Inset(20, 20);
doc.AddImageObject(img, false);
doc.Save(Server.MapPath("imagesetfile.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![imagesetfile.pdf](../../../../images/pdf/imagesetfile.pdf.png) — imagesetfile.pdf
