# GetImageProperties Function

Get the image information for all the raster images.

## Syntax

*C#*

`IList<`[`ImageProperties`](../../9-imageproperties/index.md)`> GetImageProperties()`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| Return | A collection of all the image properties.. |

## Notes

Get the image information for all the raster images. If the [PageContents](../2-properties/pagecontents.md) is null then an exception will be raised.

After retrieving image properties you can iterate through them to find out information about what images there are and how they are placed in the document. Much like HTML, PDF allows a divorce between the image and the placement of that image. So you may have one PixMap which is drawn multiple times at multiple sizes in different locations within the document.

## Example

Here we highlight a set of images in a source document by drawing a red rectangle around each one.

```csharp
string src = "../mypics/Acrobat.pdf";
string dst = "HighlightedImages.pdf";
using var doc = new Doc();
doc.Read(src);
doc.Color.SetRgb(255, 0, 0);
doc.Width = 0.1;
var op = new ImageOperation(doc);
op.PageContents.AddPages();
var images = op.GetImageProperties();
foreach (var img in images) {
  foreach (var rend in img.Renditions) {
    rend.Focus();
    doc.FrameRect();
  }
}
doc.Save(dst);
```
