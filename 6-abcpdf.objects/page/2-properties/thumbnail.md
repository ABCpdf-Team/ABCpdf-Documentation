# Thumbnail Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PixMap`](../../pixmap/index.md) | n/a | No | The Thumbnail for the page |

## Notes

Each page can have a thumbnail image for quick preview purposes. This property allows to access such a thumbnail if it exists, or to assign such a thumbnail to a page if it does not.

## Example

This example shows how to create and embed thumbnails in a PDF document.

```csharp
using var doc = new Doc();
using var src = new Doc();
doc.Read("../Rez/spaceshuttle.pdf");
doc.Rendering.DotsPerInch = 18;
var pages = doc.ObjectSoup.Catalog.Pages.GetPageArrayAll();
foreach (var page in pages) {
  doc.Page = page.ID;
  using (var xi = XImage.FromData(doc.Rendering.GetData(".jpg"), null))
    page.Thumbnail = PixMap.FromXImage(doc.ObjectSoup, xi);
}
doc.Save("embedthumbnails.pdf");
```
