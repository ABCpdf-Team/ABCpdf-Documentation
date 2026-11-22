# AddImageBitmap Function

Adds a System.Drawing.Bitmap to the current page.

## Syntax

```csharp
int AddImageBitmap(System.Drawing.Bitmap bitmap, bool transparent)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| bitmap | A .NET Bitmap to be added to the page. |
| transparent | Whether transparency information should be preserved. |
| return | The ID of the newly added Image Object. |

## Notes

Adds a System.Drawing.Bitmap to the current page.

If the Transparent parameter is set to true then any transparency information will be preserved. This allows you to add formats such as transparent GIF and PNG with alpha channel.

The image is scaled to fill the current [Rect](../2-properties/rect.md). It is transformed using the current [Transform](../../xtransform/index.md).

## Example

The following code adds a transparent PNG to a document.

```csharp
using var doc = new Doc();
string path = "../mypics/mypic.png";
using var bm = new Bitmap(path);
doc.Rect.Inset(20, 20);
doc.Color.String = "0 0 200";
doc.FillRect();
doc.AddImageBitmap(bm, true);
doc.Save("docaddimagebitmap.pdf");
```

![docaddimagebitmap.pdf](../../../images/pdf/docaddimagebitmap.pdf.png)  
docaddimagebitmap.pdf

Also see example code in: [XRendering AntiAliasPolygons Property](../../xrendering/2-properties/antialiaspolygons.md), [XRendering AntiAliasText Property](../../xrendering/2-properties/antialiastext.md), [XRendering SaveAlpha Property](../../xrendering/2-properties/savealpha.md).
