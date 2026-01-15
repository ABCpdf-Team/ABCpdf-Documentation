# Contains   Function

Determine if this rectangle contains a specified point or  rectangle.

## Syntax

```csharp
bool Contains(<a href="../../xpoint/default.htm">XPoint</a> point)<br> bool Contains(PointF point)<br> bool Contains(Point point)<br> bool Contains(float x, float y)<br> bool Contains(double x, double y)<br> bool Contains(<a href="../default.htm">XRect</a> rect)
```

## Params

| Name | Description |
| --- | --- |
| rect | The rectangle to test. |
| point | The point to test. |
| x | The x coordinate of a point to test. |
| y | The y coordinate of a point to test. |
| return | Whether the provided object is contained by this one. |

## Notes

Determine if this rectangle  contains a specified point or rectangle.

In the case of rectangles, all four corners must be contained for the function to return true.

If a null point or rectangle  is passed  this function will return false.

