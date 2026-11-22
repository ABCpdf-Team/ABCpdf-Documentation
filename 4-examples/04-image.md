# Image Example

This example shows how to create a simple PDF displaying an image.

## Image

First we create an ABCpdf Image object and we assign our image file.

```csharp
using var img = new XImage();
img.SetFile("../mypics/pic.jpg");
```

## Doc

Next we create an ABCpdf Doc object.

When we add our image it will be scaled to fit the current rect so it is important that we adjust the rect to reflect the dimensions of our image. Here we assume a one to one ratio between pixels and points which will give us a 72 dpi result when printed.

```csharp
using var doc = new Doc();
doc.Rect.Left = 50;
doc.Rect.Bottom = 25;
doc.Rect.Width = img.Width;
doc.Rect.Height = img.Height;
doc.AddImageObject(img, false);
doc.Save("image.pdf");
```

## Results

![image.pdf](../images/pdf/image.pdf.png)  
image.pdf
