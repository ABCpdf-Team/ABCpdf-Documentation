# Point Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `Point` | n/a | No | The System.Drawing.Point. |

## Notes

The point as a System.Drawing Point.

Windows coordinates are measured in distances from the top left of the drawing surface while PDF coordinates are measured from the bottom left.

So when you use this property the coordinates must be re-mapped. This needs to be done in the context of a containing object. Properties such as the [Doc.Pos](../../doc/2-properties/rect.md) are interpreted in the context of the [Doc.MediaBox](../../doc/2-properties/mediabox.md). If there is no containing object then no re-mapping can be performed.

You may find it easier to work with .NET Points than PDF points. However remember that operations such as [Transforms](../../xtransform/index.md) work on the underlying PDF coordinates and not on the abstracted Windows coordinates.

## Example

The following code adds three words to a document. The positioning is done using standard .NET Points.

```csharp
using var doc = new Doc();
doc.FontSize = 96;
Point pt = doc.Pos.Point;
pt.Offset(100, 150);
doc.Pos.Point = pt;
doc.AddText("One");
pt.Offset(100, 150);
doc.Pos.Point = pt;
doc.AddText("Two");
pt.Offset(100, 150);
doc.Pos.Point = pt;
doc.AddText("Three");
doc.Save("xptpt.pdf");
```

![xptpt.pdf](../../../images/pdf/xptpt.pdf.png)  
xptpt.pdf
