# Small Table Example

Draw a single-page table using a helper `PDFTable` class.

## Setup
```csharp
string text = File.ReadAllText(Server.MapPath("text6.txt"));
using var doc = new Doc();
// set up document
doc.FontSize = 16;
doc.Rect.Inset(20, 20);
```
```vbnet
Dim theText As String = File.ReadAllText(Server.MapPath("text6.txt"))
Using doc As New Doc()
  ' set up document
  doc.FontSize = 16
  doc.Rect.Inset(20, 20)
```

## Table
```csharp
var table = new PDFTable(doc, 5);
table.CellPadding = 5;
table.HorizontalAlignment = 1;
```
```vbnet
  Dim theTable As New PDFTable(doc, 5)
  theTable.CellPadding = 5
  theTable.HorizontalAlignment = 1
```

## Add Rows
```csharp
text = text.Trim();
text = text.Replace("\r\n", "\r");
string[] theRows = text.Split(new char[] { '\r' });

for (int i = 0; i < theRows.Length; i++) {
  table.NextRow();
  string[] theCols = theRows[i].Split(new char[] { '\t' });
  theCols[0] = "<stylerun hpos=0>" + theCols[0] + "</stylerun>";
  table.AddTextStyled(theCols);
  if ((i % 2) == 1)
    table.FillRow("220 220 220", i);
}
table.Frame();

doc.Flatten();
doc.Save(Server.MapPath("table1.pdf"));
```
```vbnet
  theText = theText.Trim()
  theText = theText.Replace(vbCr & vbLf, vbCr)
  Dim theRows As String() = theText.Split(New Char() {ControlChars.Cr})

  Dim i As Integer = 0
  While i < theRows.Length
    theTable.NextRow()
    Dim theCols As String() = theRows(i).Split(New Char() {ControlChars.Tab})
    theCols(0) = "<stylerun hpos=0>" + theCols(0) + "</stylerun>"
    theTable.AddTextStyled(theCols)
    If (i Mod 2) = 1 Then
      theTable.FillRow("220 220 220", i)
    End If
    System.Math.Max(System.Threading.Interlocked.Increment(i), i - 1)
  End While
  theTable.Frame()

  doc.Flatten()
  doc.Save(Server.MapPath("table1.pdf"))
End Using
```

## Results
![table1.pdf](../../images/pdf/table1.pdf.png) — table1.pdf
