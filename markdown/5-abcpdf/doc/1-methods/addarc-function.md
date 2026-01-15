# AddArc Function

Adds an arc to the current page.

## Syntax

```csharp
int AddArc(double as, double ae, double cx, double cy, double rx, double ry)
int AddArc(double as, double ae, double cx, double cy, double rx, double ry, bool filled)
```

## Params

| Name | Description |
| --- | --- |
| as | Start angle in degrees. |
| ae | End angle in degrees. |
| cx | Horizontal center of the arc. |
| cy | Vertical center of the arc. |
| rx | Horizontal radius. |
| ry | Vertical radius. |
| filled | Whether to fill the arc rather than simply draw it. |
| return | The Object ID of the newly added Graphic Object. |

## Notes

Draws an arc using the current color, width, and options.

- Centered at `(cx, cy)` with independent horizontal and vertical radii.
- Angles are measured anti-clockwise with zero at three o’clock.

## Example

Add an arc and save.

```csharp
using var doc = new Doc();
doc.Width = 24;
doc.Color.String = "120 0 0";
doc.AddArc(0, 270, 300, 400, 200, 300);
doc.Save(Server.MapPath("docaddarc.pdf")); // Windows specific
```

## Results

![docaddarc.pdf](../../../../images/pdf/docaddarc.pdf.png) — docaddarc.pdf
