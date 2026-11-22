# eForm Placeholder Example

This example shows how to use eForm fields as placeholders for the insertion of text. In this example we simply replace each of the fields in a form with the name of that field.

## Src

First we create an ABCpdf Doc object and read in our template form.

```csharp
using var doc = new Doc();
doc.Read("../mypics/form.pdf");
doc.Form.NeedAppearances = false; // for PDF 2.0
doc.Font = doc.AddFont("Helvetica-Bold");
doc.FontSize = 16;
doc.Rect.Pin = XRect.Corner.TopLeft;
```

## Add

We iterate through each of the fields. For each field we focus on the field. We then color the rectangle light gray and draw the name of the field in dark red.

```csharp
var names = doc.Form.GetFieldNames();
foreach (string name in names) {
  Field theField = doc.Form[name];
  theField.Focus();
  doc.Color.String = "240 240 255";
  doc.FillRect();
  doc.Rect.Height = 16;
  doc.Color.String = "220 0 0";
  doc.AddText(theField.Name);
  doc.Delete(theField.ID);
}
```

## Save

Finally we save.

```csharp
doc.Save("eform.pdf");
```

## Results

Given the following document.

![form.pdf](../images/pdf/form.pdf.png)  
form.pdf

This is the kind of output you might expect.

![eform.pdf](../images/pdf/eform.pdf.png)  
eform.pdf
