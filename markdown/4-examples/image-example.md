# Image Example

Create a simple PDF displaying an image.

## Image
```csharp
using var img = new XImage();
img.SetFile(Server.MapPath("../mypics/pic.jpg"));
```
```vbnet
Dim theImg As New XImage()
theImg.SetFile(Server.MapPath("../mypics/pic.jpg"))
```

## Doc
```csharp
using var doc = new Doc();
doc.Rect.Left = 50;
doc.Rect.Bottom = 25;
doc.Rect.Width = img.Width;
doc.Rect.Height = img.Height;
doc.AddImageObject(img, false);
doc.Save(Server.MapPath("image.pdf"));
```
```vbnet
Using doc As New Doc()
  doc.Rect.Left = 50
  doc.Rect.Bottom = 25
  doc.Rect.Width = theImg.Width
  doc.Rect.Height = theImg.Height
  doc.AddImageObject(theImg, False)
  doc.Save(Server.MapPath("image.pdf"))
End Using
```

## Results
- ../images/pdf/image.pdf.png — image.pdf
