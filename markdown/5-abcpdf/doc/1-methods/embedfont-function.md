# EmbedFont Function

Embeds a font into the document.

## Syntax

```csharp
int EmbedFont(string name)
int EmbedFont(string name, LanguageType language)
int EmbedFont(string name, LanguageType language, bool vertical)
int EmbedFont(string name, LanguageType language, bool vertical, bool subset)
int EmbedFont(string name, LanguageType language, bool vertical, bool subset, bool force)
```

## Params

| Name | Description |
| --- | --- |
| name | Typeface name. |
| language | Language type (`Latin`, `Unicode`, `Korean`, `Japanese`, `ChineseS`, `ChineseT`). |
| vertical | Whether text direction is vertical. |
| subset | Whether to subset the font. |
| force | Whether to override font permissions and force embedding. |
| return | The Object ID of the newly embedded Font Object. |

## Notes

Embeds font data and style information into the document to ensure consistent rendering everywhere.

- Embedding increases PDF size and may redistribute font files; check licensing.
- See `AddFont` for naming guidance.
- Assign the returned ID to `Doc.Font`:

```csharp
theDoc.Font = theDoc.AddFont("Courier");
```

- Returns `0` if not found.
- Newly added fonts are cached; you can pass a font file path to load dynamically.

## Example

Embed “Comic Sans MS”, add text, and save.

```csharp
using var doc = new Doc();
doc.FontSize = 216;
string font = "Comic Sans MS";
doc.Font = doc.EmbedFont(font);
doc.AddText(font);
doc.Save(Server.MapPath("docembedfont.pdf")); // Windows specific
```

## Results

![docembedfont.pdf](../../../../images/pdf/docembedfont.pdf.png) — docembedfont.pdf
