# FromLbwh Function

Creates an XRect from a bottom left corner, a width and a height.

## Syntax

```csharp
static <a href="../default.htm">XRect</a> FromLbwh(double left, double bottom, double width, double height)
```

## Params

| Name | Description |
| --- | --- |
| left | The left coordinate. |
| bottom | The bottom coordinate. |
| width | The width of the rectangle. |
| height | The height of the rectangle. |

## Notes

This method constructs an XRect object from a bottom left corner, a width and a height.

It assumes that subsequent resizing and positioning operations on this object will also be based around the bottom left corner. As such the Pin property will remain at its default of Corner.BottomLeft.

