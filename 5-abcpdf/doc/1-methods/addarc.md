# AddArc Function

Adds an arc to the current page.

## Syntax

```csharp
int AddArc(double angle1, double angle2, double cx, double cy, double rx, double ry)
int AddArc(double angle1, double angle2, double cx, double cy, double rx, double ry, bool filled)
```

## Params

| Name | Description |
| :---: | --- |
| angle1 | The start angle of the arc in degrees. |
| angle2 | The end angle of the arc in degrees. |
| cx | The horizontal center of the arc. |
| cy | The vertical center of the arc. |
| rx | The horizontal radius of the arc. |
| ry | The vertical radius of the arc. |
| filled | Whether to fill the arc rather than simply drawing it. |
| return | The Object ID of the newly added Graphic Object. |

## Notes

Adds an arc to the current page. The arc is drawn in the current [color](../2-properties/color.md) at the current [width](../2-properties/width.md) and with the current [options](../2-properties/options.md).

The arc is fixed at the center coordinate and can have different horizontal and vertical radii. Drawing starts at the start angle and the arc is swept out until the end angle is reached. Angles are measured anti-clockwise with zero at three o'clock.

The AddArc function returns the Object ID of the newly added Graphic Object.

## Example

The following code adds an arc to a document.

```csharp
using var doc = new Doc();
doc.Width = 24;
doc.Color.String = "120 0 0";
doc.AddArc(0, 270, 300, 400, 200, 300);
doc.Save("docaddarc.pdf");
```

![docaddarc.pdf](../../../images/pdf/docaddarc.pdf.png)  
docaddarc.pdf

Also see example code in: [Doc Options Property](../2-properties/options.md).
