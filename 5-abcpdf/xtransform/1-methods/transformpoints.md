# TransformPoints  Function

Applies this transform to a specified array of points.

## Syntax

[C#]

```csharp
Point[] TransformPoints(Point[] points)PointF[] TransformPoints(PointF[] points)XPoint[] TransformPoints(XPoint[] points)
```

## Params

| **Name** | **Description** |
| --- | --- |
| points | The array of points to be transformed. |
| return | The array that was passed in. |

## Notes

Applies this transform to a specified array of points.

The behavior of this method is the same as that of the System.Drawing.Drawing2D Matrix.TransformPoints function.
