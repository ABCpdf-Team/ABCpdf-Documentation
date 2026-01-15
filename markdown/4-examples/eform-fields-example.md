# eForm Fields Example

Change eForm field values.

## Src
```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/form.pdf"));

doc.Form.NeedAppearances = false; // for PDF 2.0
```
```vbnet
Using doc As New Doc()
  doc.Read(Server.MapPath("../mypics/form.pdf"))

  doc.Form.NeedAppearances = False ' for PDF 2.0
```

## Add
```csharp
string[] names = doc.Form.GetFieldNames();
foreach (string theName in names) {
  var field = doc.Form[theName];
  field.Value = field.Name;
}
```
```vbnet
  Dim theNames As String() = doc.Form.GetFieldNames()
  For Each theName As String In theNames
    Dim theField As Field = doc.Form(theName)
    theField.Value = theField.Name
  Next
```

## Save
```csharp
doc.Save(Server.MapPath("eformfields.pdf"));
```
```vbnet
  doc.Save(Server.MapPath("eformfields.pdf"))
End Using
```

## Results
- ../images/pdf/form.pdf.png — form.pdf
- ../images/pdf/eformfields.pdf.png — eformfields.pdf
