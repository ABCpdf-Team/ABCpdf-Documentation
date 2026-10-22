# AddImageFile Function

Extract an image from a file and add it to the current page.

## Syntax

[C#]

```csharp
int AddImageFile(string path)int AddImageFile(string path, int frame)
```

## Params

| **Name** | **Description** |
| --- | --- |
| path | A file path, URL or html string to be added to the page. |
| frame | Some image types support multiple frames or pages. This is the one based index specifying the required frame (default one). |
| return | The Object ID of the newly added Image Object. |

## Notes

Adds an image to the current page returning the ID of the newly added object.

In general you want the [AddImageObject](addimageobject.md) method rather than this one, as AddImageFile embeds images using a restricted range of [ReadModules](xreadoptions/2-properties/1-readmodule.md) and transparency options.

This method only supports JPEG, JPEG 2000, TIFF, EMF, WMF, PS (PostScript) or EPS (Encapsulated PostScript) and always preserves transparency.

AddImageFile and [AddImageObject](addimageobject.md) treat EMF and WMF files differently. AddImageFile defaults to the EmfVector [ReadModule](xreadoptions/2-properties/1-readmodule.md) which means that the vector nature of such files will be preserved. [AddImageObject](addimageobject.md) defaults to the BasicImage ReadModule which means that such files will be rasterized. For more details see the [ReadModule](xreadoptions/2-properties/1-readmodule.md) property.

The image is scaled to fill the current [Rect](2-properties/rect.md). It is transformed using the current [Transform](xtransform/default.md).

---
**Transparency.**
Occasionally you may find that you need to invert the transparency of your image. To do this you can assign a decode array using the ID returned from this function.

To invert the transparency:

[C#]

```csharp
theDoc.SetInfo(theDoc.GetInfoInt(theID, "XObject"), "/SMask*/Decode", "[1 0]");
```

A similar technique can be used for inverting or altering color levels on the image itself.

To invert an RGB image:

[C#]

```csharp
theDoc.SetInfo(theDoc.GetInfoInt(theID, "XObject"), "/Decode", "[1 0 1 0 1 0]");
```

---

## Example

The following code adds an image to the current page positioned at the bottom left.

[C#]

```csharp
using var doc = new Doc();
doc.Rect.String = "0 0 510 638";
string path = "../mypics/pic.jpg";
doc.AddImageFile(path, 1);
doc.Save("docaddimage.pdf");
```

![](../../../images/pdf/docaddimage.pdf.png)
docaddimage.pdf

Also see example code in:

* [PixMap SetAlpha Function](6-abcpdf.objects/pixmap/1-methods/setalpha.md)
* [PixMap ToGrayscale Function](6-abcpdf.objects/pixmap/1-methods/tograyscale.md).
