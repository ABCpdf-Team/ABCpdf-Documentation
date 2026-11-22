# TopDown Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | The current position of the origin. |

## Notes

PDF coordinates are measured upwards from the bottom of the document. For some types of layout it can be useful to measure coordinates downwards from the top of the document.

By setting this property to true coordinates are assumed to start at the top rather than the bottom of the document.

More precisely the origin is assumed to be at the top-left of the current [MediaBox](mediabox.md).

There are a [variety of methods](../../../3-concepts/c-coordinates.md) you can use to change coordinate systems.

Note that transforms operate on the underlying PDF coordinate space rather than any abstraction specified by the [Units](units.md) and [TopDown](topdown.md) properties. If you are using transforms you will find it easiest to work in the native PDF coordinate space.

## Example

The following code creates a PDF document and adds a grid measured in inches.

```csharp
using var doc = new Doc();
doc.Units = UnitType.Inches;
doc.TopDown = true;
doc.Width = 1.0 / 8.0;
doc.FontSize = 1;
doc.Rect.Pin = XRect.Corner.TopLeft;
for (int i = 0; i <= 12; i += 2) {
  doc.AddLine(0, i, 12, i);
  doc.Rect.Position(0, i);
  doc.AddText(i.ToString());
  doc.AddLine(i, 0, i, 12);
  doc.Rect.Position(i, 0);
  doc.AddText(i.ToString());
}
doc.Save("doctopdown.pdf");
```

![doctopdown.pdf](../../../images/pdf/doctopdown.pdf.png)  
doctopdown.pdf
