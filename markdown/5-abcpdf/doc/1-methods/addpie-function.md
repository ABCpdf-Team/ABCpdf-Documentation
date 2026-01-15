# AddPie Function

Adds a pie slice to the current page.

## Syntax

```csharp
int AddPie(double angleStart, double angleEnd, bool filled)
```

## Params

| Name | Description |
| --- | --- |
| angleStart | Start angle of the slice in degrees. |
| angleEnd | End angle of the slice in degrees. |
| filled | Whether to fill the slice rather than simply outline it. |
| return | The Object ID of the newly added Graphic Object. |

## Notes

Draws a pie slice of the oval that fills the current rectangle, from `angleStart` to `angleEnd` (degrees, measured anti-clockwise with zero at three o’clock). Uses the current color, width, and options.

## Example

Two slices: one filled, one outlined.

```csharp
using var doc = new Doc();
doc.Width = 80;
doc.Rect.Inset(50, 50);
doc.Color.String = "255 0 0";
doc.AddPie(0, 90, true);
doc.Color.String = "0 255 0";
doc.AddPie(180, 270, false);
doc.Save(Server.MapPath("docaddpie.pdf")); // Windows specific
```

## Results

![docaddpie.pdf](../../../../images/pdf/docaddpie.pdf.png) — docaddpie.pdf
