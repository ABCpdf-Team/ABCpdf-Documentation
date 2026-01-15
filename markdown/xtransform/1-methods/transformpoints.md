# TransformPoints  Function

Applies this transform to a specified array of points.

## Syntax

```csharp
override Point[] TransformPoints(Point[] points)<br> override PointF[] TransformPoints(PointF[] points)<br> override XPoint[] TransformPoints(XPointF points)
```

## Params

| Name | Description |
| --- | --- |
| points | The array of points to be transformed. |
| return | The array that was passed in. |

## Notes

Applies this transform to a specified array of points.

The behavior of this method is the same as that of the System.Drawing.Drawing2D Matrix.TransformPoints function.

