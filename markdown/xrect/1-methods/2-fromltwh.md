# FromLtwh Function

Creates an XRect from a top left corner, a width and a height.

## Syntax

```csharp
static <a href="../default.htm">XRect</a> FromLtwh(double left, double top, double width, double height)
```

## Params

| Name | Description |
| --- | --- |
| left | The left coordinate. |
| top | The top coordinate. |
| width | The width of the rectangle. |
| height | The height of the rectangle. |

## Notes

This method constructs an XRect object from a top left corner, a width and a height.

It assumes that subsequent resizing and positioning operations on this object will also be based around the top left corner. As such the Pin property will be set to Corner.TopLeft.

