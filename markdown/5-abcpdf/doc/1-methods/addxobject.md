# AddXObject Function

Add a Form or Image XObject to the current page.

## Syntax

```csharp
int AddXObject(<a href="../../../6-abcpdf.objects/pixmap/default.htm">Objects.PixMap</a> pm)<br> int AddXObject(<a href="../../../6-abcpdf.objects/formxobject/default.htm">Objects.FormXObject</a> pm)
```

## Params

| Name | Description |
| --- | --- |
| pm | The image to be added to the page. |
| return | The Object ID of the newly added Image Object. |

## Notes

Add a Form or Image XObject into the current  rectangle on the current page.

Form and Image XObjects represent a drawing sequence external to the main content stream of the page. Image XObjects represent a raster bitmap in one of a variety of color spaces. Form XObjects represent a separate content stream with a separate sequence of drawing commands.

For example a Form XObject might be used to represent a "Draft" stamp which might then be applied on various pages at various locations. The fact that this stamp is an external object  allows the viewing application to cache the representation and also allows changes to the stamp to affect the appearance of multiple instances.

## Example

This example shows how to load an image into a PixMap and then draw it on the current page using the AddXObject method.

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
doc.Save(Server.MapPath("examplePixMapBitmap.pdf")); // Windows specific);
```

