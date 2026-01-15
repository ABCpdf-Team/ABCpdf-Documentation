# Paged HTML Example

Import an HTML page into a multi-page PDF document and chain pages.

## Setup
```csharp
using var doc = new Doc();
doc.Rect.Inset(72, 144);
```
```vbnet
Using doc As New Doc()
  doc.Rect.Inset(72, 144)
```

## Features
```csharp
doc.HtmlOptions.Engine = EngineType.Chrome123;
doc.HtmlOptions.UseScript = true; // enable JavaScript
doc.HtmlOptions.Media = MediaType.Print; // Or Screen for a more screen oriented output
doc.HtmlOptions.InitialWidth = 800; // In case we have a responsive site
//doc.HtmlOptions.RepaintDelay = 500; // AJAX/animated content
//doc.HtmlOptions.IgnoreCertificateErrors = false; // ease debugging
//doc.HtmlOptions.FireShield.Policy = XHtmlFireShield.Enforcement.Deny; // ease debugging
```
```vbnet
  doc.HtmlOptions.Engine = EngineType.Chrome123
  doc.HtmlOptions.UseScript = True ' enable JavaScript
  doc.HtmlOptions.Media = MediaType.Print ' Or Screen
  doc.HtmlOptions.InitialWidth = 800 ' width hint
  'doc.HtmlOptions.RepaintDelay = 500
  'doc.HtmlOptions.IgnoreCertificateErrors = False
  'doc.HtmlOptions.FireShield.Policy = XHtmlFireShield.Enforcement.Deny
```

## Page
```csharp
doc.Page = doc.AddPage();
int id = doc.AddImageUrl("http://www.yahoo.com/");
```
```vbnet
  doc.Page = doc.AddPage()
  Dim theID As Integer
  theID = doc.AddImageUrl("http://www.yahoo.com/")
```

## Chain
```csharp
while (true) {
  doc.FrameRect(); // add a black border
  if (!doc.Chainable(id))
    break;
  doc.Page = doc.AddPage();
  id = doc.AddImageToChain(id);
}
```
```vbnet
  While True
    doc.FrameRect() ' add a black border
    If Not doc.Chainable(theID) Then Exit While
    doc.Page = doc.AddPage()
    theID = doc.AddImageToChain(theID)
  End While
```

## Flatten
```csharp
for (int i = 1; i <= doc.PageCount; i++) {
  doc.PageNumber = i;
  doc.Flatten();
}
```
```vbnet
  Dim i As Integer = 1
  While i <= doc.PageCount
    doc.PageNumber = i
    doc.Flatten()
    System.Math.Max(System.Threading.Interlocked.Increment(i), i - 1)
  End While
```

## Save
```csharp
doc.Save(Server.MapPath("pagedhtml.pdf"));
```
```vbnet
  doc.Save(Server.MapPath("pagedhtml.pdf"))
End Using
```

## Results
- ../images/pdf/pagedhtml.pdf.png — Page 1
- ../images/pdf/pagedhtml.pdf2.png — Page 2
