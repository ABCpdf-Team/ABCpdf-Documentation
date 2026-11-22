# Magnify Function

Magnifies the rectangle.

## Syntax

```csharp
void Magnify(double x, double y)
```

## Params

| Name | Description |
| :---: | --- |
| x | The horizontal scale factor. |
| y | The vertical scale factor. |

## Notes

Scales the rectangle width and height by a specified horizontal and vertical amount.

When you magnify a rectangle one corner of the rectangle is pinned and the width and height of the rectangle adjusted. The corner which is pinned is indicated by the [Pin](../2-properties/pin.md) property. The default pin corner is the bottom left.

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "20 20 220 120";
Response.Write($"Rect = {rc}");
Response.Write("<br>");
rc.Magnify(0.5, 0.5);
Response.Write($"Scale = {rc}");
```

Produces the following output.

```
Rect = 20 20 220 120
Scale = 20 20 120 70
```

Also see example code in: [Doc AddImageDoc Function](../../doc/1-methods/addimagedoc.md), [Doc Transform Property](../../doc/2-properties/transform.md), [XImage Selection Property](../../ximage/2-properties/selection.md), [XRendering AntiAliasText Property](../../xrendering/2-properties/antialiastext.md), [XTextStyle HPos Property](../../xtextstyle/2-properties/hpos.md), [XTextStyle VPos Property](../../xtextstyle/2-properties/vpos.md), [PixMap SetAlpha Function](../../../6-abcpdf.objects/pixmap/1-methods/setalpha.md), [PixMap ToGrayscale Function](../../../6-abcpdf.objects/pixmap/1-methods/tograyscale.md).
