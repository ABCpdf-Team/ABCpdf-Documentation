# Save Function

Saves the document.

## Syntax

```csharp
void Save(string path)
void Save(Stream stream)
```

## Params

| Name | Description |
| --- | --- |
| path | Destination file path. |
| stream | Destination stream. |

## Notes

Exports the current document as PDF, XPS, PostScript, HTML, DOCX, WebGL, or SWF.

- For file output, use an appropriate extension: `.pdf`, `.xps`, `.ps`, `.docx`, `.htm`, `.html`, `.swf`. Unrecognized extensions default to PDF.
- For streams, indicate format via `Doc.SaveOptions.FileExtension` (e.g., `.htm`, `.xps`). For HTML set `Doc.SaveOptions.Folder`. For XPS, streams must be readable and writable.
- ABCpdf loads objects just-in-time; keep the source PDF available while a `Doc` references it. Do not overwrite a PDF while it is read into a `Doc`; save to a different location and swap after `Doc` use ends (e.g., via `Clear`, `Dispose`, or `Read`).
- To obtain raw PDF data use `GetData`.
- `SaveOptions.Refactor` controls elimination of duplicate/redundant objects on save.
- PDF version is determined by features used (and templates); do not target newer versions unnecessarily.
- SWF saving behavior depends on `SaveOptions.Template` and related template data; images may be output in JPEG at ~80% quality under certain conditions.

## Example

Add text and save.

```csharp
using var doc = new Doc();
doc.FontSize = 96;
doc.AddText("Hello World");
doc.Save(Server.MapPath("docsave.pdf")); // Windows specific
```

## Results

![docsave.pdf](../../../../images/pdf/docsave.pdf.png) — docsave.pdf
