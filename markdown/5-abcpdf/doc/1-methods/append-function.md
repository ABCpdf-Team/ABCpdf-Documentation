# Append Function

Appends a PDF to the end of the document.

## Syntax

```csharp
void Append(Doc doc)
```

## Params

| Name | Description |
| --- | --- |
| doc | The document to append to the end of this one. |

## Notes

Appends one PDF to another efficiently, preserving page-level information like bookmarks.

- For drawing individual pages into another PDF, use `AddImageDoc`.
- When appending many pages, `Append` is faster than drawing pages individually and maintains extras like bookmarks.
- If pages contain form fields, consider `MakeFieldsUnique` to avoid shared fields.
- `SaveOptions.Refactor` and `SaveOptions.Preflight` affect duplicate elimination and validation. Often faster to disable them during append and enable for save.

## Example

Join two simple PDFs and save.

```csharp
using var doc1 = new Doc();
doc1.FontSize = 192;
doc1.TextStyle.HPos = 0.5;
doc1.TextStyle.VPos = 0.5;
doc1.AddText("Hello");
using var doc2 = new Doc();
doc2.FontSize = 192;
doc2.TextStyle.HPos = 0.5;
doc2.TextStyle.VPos = 0.5;
doc2.AddText("World");
doc1.Append(doc2);
doc1.Save(Server.MapPath("docjoin.pdf")); // Windows specific
```

## Results

![docjoin.pdf](../../../../images/pdf/docjoin.pdf.png) — Page 1
![docjoin.pdf](../../../../images/pdf/docjoin.pdf2.png) — Page 2
