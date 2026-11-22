# Read Function

Read and validate an existing document.

## Syntax

```csharp
Doc Read(string path, XReadOptions options)
Doc Read(byte[] data, XReadOptions options)
Doc Read(Stream stream, XReadOptions options)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| path | The file path to PDF document. |
| data | The source PDF data. |
| stream | The source PDF stream. |
| options | The settings for the read. (May be null.) |

## Notes

This method reads and validates the document according to the [Conformance](../2-properties/conformance.md) property. Any conformance error or warning is reported in the [Errors](../2-properties/errors.md) property or the [Warnings](../2-properties/warnings.md) property after the method finishes.

If the [Doc](../2-properties/doc.md) property is null, the document is read into a new [Doc](../../../5-abcpdf/doc/index.md) object, which is returned; otherwise, the document is read into the value of the [Doc](../2-properties/doc.md) property, which is returned.

## Example

Here we validate a document against PDF/A-1b format.

```csharp
string path = "../Rez/pdfa.pdf";
using (var op = new PdfValidationOperation()) {
  op.Conformance = PdfConformance.PdfA1b;
  using var doc = op.Read(path, null);

  if (op.Errors.Count > 0) {
    Console.WriteLine("Errors:");
    for (int i = 0; i < op.Errors.Count; ++i)
      Console.WriteLine(op.Errors[i]);
  }
  if (op.Warnings.Count > 0) {
    if (op.Errors.Count > 0)
      Console.WriteLine();
    Console.WriteLine("Warnings:");
    for (int i = 0; i < op.Warnings.Count; ++i)
      Console.WriteLine(op.Warnings[i]);
  }
}
```
