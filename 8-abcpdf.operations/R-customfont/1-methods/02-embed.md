# Embed Function

Embed the custom font into a document.

## Syntax

[C#]

```csharp
int Embed(Doc doc, bool color, double spacing)
```

## Params

| **Name** | **Description** |
| --- | --- |
| doc | The document into which the font should be embedded. |
| color | If the fonts contain multiple colors. |
| spacing | The spacing after the glyph as a proportion of the right extent of the glyph bounding box/ |
| return | The font ID to be used. |

## Notes

## Example

This example shows how you might embed and use a custom font. For an example showing how to create the emojifont.pdf document see the [CustomFont](01-customfont.md) constructor.

[C#]

```csharp
using var icons = new Doc();
icons.Read("../Rez/emojifont.pdf");
var emojis = new CustomFont(icons, 'a');
using var doc = new Doc();
doc.Page = doc.AddPage();
doc.FontSize = 42;
doc.Rect.Inset(72, 72);
int id = emojis.Embed(doc, true, 0.1);
doc.AddTextStyled($"Hello World: <stylerun pid={id}>abcdef</stylerun>...");
doc.FrameRect();
doc.Save("emojis.pdf");
```

