# SetMask Function

Assign a soft mask to the image.

## Syntax

*C#*

`void SetMask(`[`XImage`](../index.md)` mask, bool invert)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| mask | The image containing the soft mask. |
| invert | Whether to invert the mask. |

## Notes

Assign a soft mask or alpha channel. Soft masks are used to assign levels of transparency to an image.

The mask provided will be converted to a grayscale intensity map and may be scaled to ensure that the dimensions of the mask match those of the image. The assigned mask applies to all frames of the current image.

If the Invert parameter is set then the mask will be inverted - making transparent areas opaque and opaque areas transparent.

Different images within the mask can be accessed using the [Frame](../2-properties/frame.md) property. Different portions of the mask can be selected using the [Selection](../2-properties/selection.md) property.

Note that transparency is only applied to an Image if the [Indirect](../2-properties/indirect.md) property is true (which is generally the case).

## Example

Here we read a TIFF file and present the data to the Image object. We then read a mask image and assign that to our Image. Finally we add the image to our document and then save the PDF.

```csharp
using var doc = new Doc();
using var img = new XImage();
using var msk = new XImage();
img.SetFile("../mypics/mypic.jpg");
msk.SetFile("../mypics/mymask.jpg");
img.SetMask(msk, true);
doc.Color.String = "0 0 0";
doc.FillRect();
doc.Rect.Inset(20, 20);
doc.AddImageObject(img, true);
doc.Save("imagesetmask.pdf");
```

Given the following input images.

|  |  |
| --- | --- |
| ![mypic.jpg](../../../images/pdf/image.pdf.png)<br>mypic.jpg | ![mymask.jpg](../../../images/pdf/mask.jpg)<br>mymask.jpg |

This is the kind of output you might expect.

![imagesetmask.pdf](../../../images/pdf/imagesetmask.pdf.png)  
imagesetmask.pdf
