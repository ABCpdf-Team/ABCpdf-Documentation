# Landscape Example

Create a PDF rotated 90° for landscape orientation.

## Setup
```csharp
using var doc = new Doc();
// apply a rotation transform
double w = doc.MediaBox.Width;
double h = doc.MediaBox.Height;
double l = doc.MediaBox.Left;
double b = doc.MediaBox.Bottom;
doc.Transform.Rotate(90, l, b);
doc.Transform.Translate(w, 0);

// rotate our rectangle
doc.Rect.Width = h;
doc.Rect.Height = w;

// add some text
doc.Rect.Inset(50, 50);
doc.FontSize = 96;
doc.AddText("Landscape Orientation");
```
```vbnet
Using doc As New Doc()
  ' apply a rotation transform
  Dim w As Double = doc.MediaBox.Width
  Dim h As Double = doc.MediaBox.Height
  Dim l As Double = doc.MediaBox.Left
  Dim b As Double = doc.MediaBox.Bottom
  doc.Transform.Rotate(90, l, b)
  doc.Transform.Translate(w, 0)

  ' rotate our rectangle
  doc.Rect.Width = h
  doc.Rect.Height = w

  ' add some text
  doc.Rect.Inset(50, 50)
  doc.FontSize = 96
  doc.AddText("Landscape Orientation")
```

## Rotate
```csharp
// adjust the default rotation and save
int id = doc.GetInfoInt(doc.Root, "Pages");
doc.SetInfo(id, "/Rotate", "90");
doc.Save(Server.MapPath("landscape.pdf"));
```
```vbnet
  ' adjust the default rotation and save
  Dim theID As Integer = doc.GetInfoInt(doc.Root, "Pages")
  doc.SetInfo(theID, "/Rotate", "90")
  doc.Save(Server.MapPath("landscape.pdf"))
End Using
```

## Results
- ../images/pdf/landscape.pdf.png — landscape.pdf
