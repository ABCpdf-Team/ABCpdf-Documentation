# Deletion Example

Delete pages from a PDF document.

## Setup
```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/sample.pdf"));
int count = doc.PageCount - 1;
```
```vbnet
Using doc As New Doc()
  doc.Read(Server.MapPath("../mypics/sample.pdf"))
  Dim theCount As Integer = doc.PageCount - 1
```

## Delete
```csharp
for (int i = 0; i < count; i++) {
  doc.PageNumber = 2;
  doc.Delete(doc.Page);
}
```
```vbnet
  Dim i As Integer = 0
  While i < theCount
    doc.PageNumber = 2
    doc.Delete(doc.Page)
    System.Math.Max(System.Threading.Interlocked.Increment(i), i - 1)
  End While
```

## Save
```csharp
doc.FontSize = 500;
doc.Color.String = "255 0 0";
doc.TextStyle.HPos = 0.5;
doc.TextStyle.VPos = 0.3;
doc.AddText(count.ToString());
doc.Save(Server.MapPath("deletion.pdf"));
```
```vbnet
  doc.FontSize = 500
  doc.Color.String = "255 0 0"
  doc.TextStyle.HPos = 0.5
  doc.TextStyle.VPos = 0.3
  doc.AddText(theCount.ToString())
  doc.Save(Server.MapPath("deletion.pdf"))
End Using
```

## Results
- ../images/pdf/deletion.pdf.png — deletion.pdf
