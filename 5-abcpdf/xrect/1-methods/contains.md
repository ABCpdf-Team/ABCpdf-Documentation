# Contains Function

Determine if this rectangle contains a specified point or rectangle.

## Syntax

*C#*

`bool Contains(`[`XPoint`](../../xpoint/index.md)` point)`  
`bool Contains(PointF point)`  
`bool Contains(Point point)`  
`bool Contains(float x, float y)`  
`bool Contains(double x, double y)`  
`bool Contains(`[`XRect`](../index.md)` rect)`

## Params

| Name | Description |
| :---: | --- |
| rect | The rectangle to test. |
| point | The point to test. |
| x | The x coordinate of a point to test. |
| y | The y coordinate of a point to test. |
| return | Whether the provided object is contained by this one. |

## Notes

Determine if this rectangle contains a specified point or rectangle.

In the case of rectangles, all four corners must be contained for the function to return true.

If a null point or rectangle is passed this function will return false.
