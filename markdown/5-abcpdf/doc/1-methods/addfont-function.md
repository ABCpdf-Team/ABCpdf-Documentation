# AddFont Function

Adds a font reference to the document.

## Syntax

```csharp
int AddFont(string name)
int AddFont(string name, LanguageType language)
int AddFont(string name, LanguageType language, bool vertical)
```

## Params

| Name | Description |
| --- | --- |
| name | Typeface name. |
| language | Language type (`Latin`, `Unicode` [requires embedding], `Korean`, `Japanese`, `ChineseS`, `ChineseT`). |
| vertical | Whether text direction is vertical. |
| return | The Object ID of the newly added Font Object. |

## Notes

Adds a font reference. The font itself is not embedded unless `Unicode` is specified; prefer `EmbedFont` to embed or when using `Unicode`.

- Acrobat substitutes fonts if the exact font is unavailable on the client.
- Standard base-14 fonts are always available (Times, Helvetica, Courier, Symbol, ZapfDingbats).
- You can add installed TrueType/OpenType/Type 1 fonts by name (as shown in the system’s fonts folder).
- Returns `0` if the font is not found; check for this to avoid unintended defaults.
- Newly added fonts are cached; to dynamically load, pass a path to the font file and avoid renaming/moving it thereafter.

Assign returned font ID to `Doc.Font`.

```csharp
theDoc.Font = theDoc.AddFont("Courier");
```

## Example

Add text using two different fonts.

```csharp
using var doc = new Doc();
doc.FontSize = 48;
string font = "Times-Roman ";
doc.Font = doc.AddFont(font);
doc.AddText(font);
font = "Helvetica-Bold";
doc.Font = doc.AddFont(font);
doc.AddText(font);
doc.Save(Server.MapPath("docaddfont.pdf")); // Windows specific
```

## Results

![docaddfont.pdf](../../../../images/pdf/docaddfont.pdf.png) — docaddfont.pdf
