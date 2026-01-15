# AddXObject Function

Add a Form or Image XObject to the current page.

## Syntax

```csharp
int AddXObject(Objects.PixMap pm)
int AddXObject(Objects.FormXObject pm)
```

## Params

| Name | Description |
| --- | --- |
| pm | The image or form to be added to the page. |
| return | The Object ID of the newly added Image Object. |

## Notes

Draws a Form or Image XObject into the current rectangle on the page.

- Image XObjects represent raster bitmaps in a color space.
- Form XObjects encapsulate a separate content stream with drawing commands and can be reused across pages (e.g., a “Draft” stamp).

## Example

Load an image into a `PixMap` and draw it.

```csharp
using var doc = new Doc();
doc.Rect.Inset(50, 50);
doc.Transform.Rotate(20, 200, 200);
doc.Color.SetRgb(200, 200, 255);
doc.FillRect();
var pm = new PixMap(doc.ObjectSoup);
using var img = (Bitmap)Bitmap.FromFile(Server.MapPath("mypics/mypic.png"));
pm.SetBitmap(img, true);
doc.AddXObject(pm);
doc.Save(Server.MapPath("examplePixMapBitmap.pdf")); // Windows specific
```

## Results

![examplePixMapBitmap.pdf](../../../../images/pdf/examplePixMapBitmap.pdf.png) — examplePixMapBitmap.pdf
