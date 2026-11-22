# Save Function

Write the conforming PDF document.

## Syntax

```csharp
void Save(Doc doc, string path)
void Save(Doc doc, Stream stream)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| doc | The document. |
| path | The destination file path. |
| stream | The destination stream. |

## Notes

This method writes the document in a conforming PDF format according to the [Conformance](../2-properties/conformance.md) property. Any conformance error is reported in the [Errors](../2-properties/errors.md) property after the method finishes.

## Example

Here we save a document in PDF/A-1b format.

```csharp
using var doc = new Doc();
doc.Read("../mypics/Acrobat.pdf");
string path = "pdfa_save.pdf";
using (var theOperation = new PdfConformityOperation()) {
  theOperation.Conformance = PdfConformance.PdfA1b;
  theOperation.Save(doc, path);

  if (theOperation.Errors.Count > 0) {
    Console.WriteLine("Errors:");
    for (int i = 0; i < theOperation.Errors.Count; ++i)
      Console.WriteLine(theOperation.Errors[i]);
  }
}
```
