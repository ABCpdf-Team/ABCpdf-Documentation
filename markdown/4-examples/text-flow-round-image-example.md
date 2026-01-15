# Text Flow Round Image Example

Flow text around an image; can be combined with the Text Flow example.

## Setup
```csharp
// text truncated for clarity
string text = "Gallia est omnis divisa in partes tres ...";
```
```vbnet
' text truncated for clarity
Dim text As String = "Gallia est omnis divisa in partes tres ..."
```

## Doc Obj
```csharp
using var doc = new Doc();
doc.Width = 4;
doc.FontSize = 32;
doc.TextStyle.Justification = 1;
doc.Rect.Inset(20, 20);
```
```vbnet
Using doc As New Doc()
  doc.Width = 4
  doc.FontSize = 32
  doc.TextStyle.Justification = 1
  doc.Rect.Inset(20, 20)
```

## Image
```csharp
string saveRect = doc.Rect.String;
using var xi = XImage.FromFile(Server.MapPath("mypics/pic.jpg"), null);
doc.Rect.Resize(xi.Width / 2, xi.Height / 2, XRect.Corner.TopLeft);
doc.AddImage(xi);
```
```vbnet
  Dim saveRect As String = doc.Rect.String
  Using xi As XImage = XImage.FromFile(Server.MapPath("mypics/pic.jpg"), Nothing)
    doc.Rect.Resize(xi.Width / 2, xi.Height / 2, XRect.Corner.TopLeft)
    doc.AddImage(xi)
  End Using
```

## Text
```csharp
double padX = doc.FontSize;
double padY = doc.FontSize / 3.0;
string format = "<stylerun justification=\"1.0\" leftmargins=\"0 {0} {1}\">";
string style = string.Format(format, doc.Rect.Height + padY, doc.Rect.Width + padX);
```
```vbnet
  Dim padX As Double = doc.FontSize
  Dim padY As Double = doc.FontSize / 3.0
  Dim format As String = "<stylerun justification=\"1.0\" leftmargins=\"0 {0} {1}\">"
  Dim style As String = String.Format(format, doc.Rect.Height + padY, doc.Rect.Width + padX)
```

## Save
```csharp
doc.Rect.String = saveRect;
doc.FrameRect();
int id = doc.AddTextStyled(style + text + "</stylerun>");
doc.Save(Server.MapPath("textflowroundimage.pdf"));
```
```vbnet
  doc.Rect.String = saveRect
  doc.FrameRect()
  Dim id As Integer = doc.AddTextStyled(style + text + "</stylerun>")
  doc.Save(Server.MapPath("textflowroundimage.pdf"))
End Using
```

## Results
- ../images/pdf/textflowroundimage.pdf.png — textflowroundimage.pdf
