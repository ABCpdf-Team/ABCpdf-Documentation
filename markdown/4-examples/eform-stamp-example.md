# eForm Stamp Example

Stamp eForm field values into a document.

## Src
```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/form.pdf"));
doc.Form.NeedAppearances = false; // for PDF 2.0
doc.Font = doc.AddFont("Helvetica-Bold");
```
```vbnet
Using doc As New Doc()
  doc.Read(Server.MapPath("../mypics/form.pdf"))
  doc.Form.NeedAppearances = False ' for PDF 2.0
  doc.Font = doc.AddFont("Helvetica-Bold")
```

## Add
```csharp
doc.Form["Day"].Value = "23";
doc.Form["Month"].Value = "February";
doc.Form["Year"].Value = "2005";
doc.Form["State"].Value = "Arizona";
doc.Form.Stamp();
```
```vbnet
  doc.Form("Day").Value = "23"
  doc.Form("Month").Value = "February"
  doc.Form("Year").Value = "2005"
  doc.Form("State").Value = "Arizona"
  doc.Form.Stamp()
```

## Save
```csharp
doc.Save(Server.MapPath("eformstamp.pdf"));
```
```vbnet
  doc.Save(Server.MapPath("eformstamp.pdf"))
End Using
```

## Results
- ../images/pdf/form.pdf.png — form.pdf
- ../images/pdf/eformstamp.pdf.png — eformstamp.pdf
