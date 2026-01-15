# Coordinate Spaces

## General
ABCpdf uses the standard Adobe PDF coordinate space:
- Origin is at the bottom-left of the page.
- Distances are measured up and to the right in points (72 points = 1 inch).

This differs from typical top-down Windows coordinates. Everything is based around the bottom-left, not the top-left. To adapt, use `Units`, `TopDown`, or `Transform`.

Positions are represented by `XPoint`. Areas (drawing area, page size) by `XRect`.

`Doc.Rect` is critical: most operations act within it. Text is added within `Doc.Rect`; frame/paint operations and images respect/bound to it. Default document size is 612×792 (8.5"×11").

## Example
Draw a rectangle positioned 100 points from the left and 200 points from the bottom; width 400, height 500. Add a grid for positioning.

[C#]
```csharp
Doc theDoc = new Doc();
theDoc.AddGrid();
theDoc.Color.String = "255 0 0";
theDoc.Width = 10;
theDoc.Rect.Position(100, 200);
theDoc.Rect.Width = 400;
theDoc.Rect.Height = 500;
theDoc.FrameRect();
theDoc.Save(Server.MapPath("coordinates.pdf"));
```

[Visual Basic]
```vbnet
Dim theDoc As Doc = New Doc()
theDoc.AddGrid()
theDoc.Color.String = "255 0 0"
theDoc.Width = 10
theDoc.Rect.Position(100, 200)
theDoc.Rect.Width = 400
theDoc.Rect.Height = 500
theDoc.FrameRect()
theDoc.Save(Server.MapPath("coordinates.pdf"))
```