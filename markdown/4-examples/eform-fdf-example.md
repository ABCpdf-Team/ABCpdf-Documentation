# eForm FDF Example

Extract Unicode annotation values from an eForm FDF file.

## Src
```csharp
using var fdf = new Doc();
fdf.Read(Server.MapPath("../Rez/form.fdf"));
```
```vbnet
Dim theFDF As New Doc()
theFDF.Read(Server.MapPath("../Rez/form.fdf"))
```

## Dest
```csharp
string theValues = "";
int lastID = Convert.ToInt32(fdf.GetInfo(0, "Count"));
```
```vbnet
Dim theValues As String = ""
Dim theLastID As Integer = Convert.ToInt32(theFDF.GetInfo(0, "Count"))
```

## Add
```csharp
// extract annotation values (for insertion into PDF)
for (int i = 0; i <= lastID; i++) {
  string theType = fdf.GetInfo(i, "Type");
  if (theType == "anno") {
    if (fdf.GetInfo(i, "SubType") == "Text") {
      string theCont;
      theCont = fdf.GetInfo(i, "Contents");
      theValues = theValues + theCont + "\r\n\r\n";
    }
  }
}
// extract field values (for demonstration purposes)
for (int i = 0; i <= lastID; i++) {
  int theN = fdf.GetInfoInt(i, "/FDF*/Fields*:Count");
  for (int j = 0; j < theN; j++) {
    string name = fdf.GetInfo(i, "/FDF*/Fields*[" + j + "]*/T:Text");
    string value = fdf.GetInfo(i, "/FDF*/Fields*[" + j + "]*/V:Text");
    // here we would do something with the field value we've found
  }
}
```
```vbnet
' extract annotation values (for insertion into PDF)
Dim i As Integer = 0
While i <= theLastID
  Dim theType As String = theFDF.GetInfo(i, "Type")
  If theType = "anno" Then
    If theFDF.GetInfo(i, "SubType") = "Text" Then
      Dim theCont As String
      theCont = theFDF.GetInfo(i, "Contents")
      theValues = theValues + theCont + vbCr & vbLf & vbCr & vbLf
    End If
  End If
  System.Math.Max(System.Threading.Interlocked.Increment(i), i - 1)
End While
' extract field values (for demonstration purposes)
Dim i As Integer = 0
While i <= theLastID
  Dim [theN] As Integer = theFDF.GetInfoInt(i, "/FDF*/Fields*:Count")
  Dim j As Integer = 0
  While j < [theN]
    Dim theName As String = theFDF.GetInfo(i, "/FDF*/Fields*[" + j + "]*/T:Text")
    ' here we would do something with the field value we've found
    Dim theValue As String = theFDF.GetInfo(i, "/FDF*/Fields*[" + j + "]*/V:Text")
    System.Math.Max(System.Threading.Interlocked.Increment(j), j - 1)
  End While
  System.Math.Max(System.Threading.Interlocked.Increment(i), i - 1)
End While
```

## Save
```csharp
using var doc = new Doc();
doc.Font = doc.EmbedFont("Arial", LanguageType.Unicode, false, true);
doc.FontSize = 96;
doc.Rect.Inset(10, 10);
doc.AddText(theValues);
doc.Save(Server.MapPath("fdf.pdf"));
```
```vbnet
Using doc As New Doc()
  doc.Font = doc.EmbedFont("Arial", LanguageType.Unicode, False, True)
  doc.FontSize = 96
  doc.Rect.Inset(10, 10)
  doc.AddText(theValues)
  doc.Save(Server.MapPath("fdf.pdf"))
End Using
```

## Results
![fdf.pdf](../../images/pdf/fdf.pdf.png) — fdf.pdf
