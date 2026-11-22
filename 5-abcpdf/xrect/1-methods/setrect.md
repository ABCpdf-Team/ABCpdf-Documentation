# SetRect Function

Sets the location and size of the rectangle.

## Syntax

*C#*

`void SetRect(double x, double y, double w, double h)`  
`void SetRect(`[`XRect`](../index.md)` rect)`

## Params

| Name | Description |
| :---: | --- |
| x | The new left position. |
| y | The new bottom position. |
| w | The new width. |
| h | The new height. |
| rect | The source rectangle. |

## Notes

Sets the location and size of the rectangle.

The width and height of the rectangle are set to the new width and height.

The rectangle is then moved to the supplied position while maintaining the width and height. The corner moved to the location is indicated by the [Pin](../2-properties/pin.md) property. The default pin corner is the bottom left.

The overload taking an XRect copies the effective location and size. It behaves as if this XRect and the parameter XRect use the default [Pin](../2-properties/pin.md) and the default coordinate settings ([Doc.TopDown](../../doc/2-properties/topdown.md) and [Doc.Units](../../doc/2-properties/units.md)) so it functions differently from the other overload and from copying using [String](../2-properties/string.md). [Pin](../2-properties/pin.md) is not copied.

For example suppose you have a Doc object (called doc) for which you have set the Doc.Units to mm and also a separate XRect (called rect) that you have created. If you call rect.SetRect(doc.Rect) the rect will contain coordinates in points rather than mm. Similarly if you call doc.Rect.SetRect(rect), the point based units within the rect will be converted to mm for insertion into the doc.Rect. So there is an automatic conversion between coordinate systems.

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "20 20 220 120";
Response.Write($"Rect = {rc}");
Response.Write("<br>");
rc.SetRect(20, 40, 50, 150);
Response.Write("Pos. = {rc}");
```

Produces the following output.

```
Rect = 20 20 220 120
Pos. = 20 40 70 190
```

Also see example code in: [XTagging Close Function](../../xtagging/1-methods/05-close.md), [XTextStyle AutoTag Property](../../xtextstyle/2-properties/autotag.md), [FontObject RuneWidths Property](../../../6-abcpdf.objects/fontobject/2-properties/runewidths.md), [FontObject Widths Property](../../../6-abcpdf.objects/fontobject/2-properties/widths.md), [Page Rotation Property](../../../6-abcpdf.objects/page/2-properties/rotation.md), [XpsImportOperation Import Function](../../../8-abcpdf.operations/4-xpsimportoperation/1-methods/import.md), [SwfImportOperation Import Function](../../../8-abcpdf.operations/5-swfimportoperation/1-methods/import.md).
