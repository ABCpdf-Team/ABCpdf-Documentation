# AddFont Function

Adds a font from a file to this font store.

## Syntax

[C#]

```csharp
<a href="../../xfont/default.htm">XFont</a> AddFont(string path, bool autoDeleteFile)<a href="../../xfont/default.htm">XFont</a> AddFont(<a href="../../xfont/default.htm">XFont</a> font)
```

## Params

| **Name** | **Description** |
| --- | --- |
| path | The path to the font file. |
| autoDeleteFile | Whether to delete the file when the font is no longer referenced. |
| font | The font to add. |
| return | The added font. |

## Notes

Adds a font from a file to this font store.

Most font files (.ttf, .otf, .pfm, etc.) contain a single font face, so the returned [XFont](xfont/default.md) is the font in that file.

However, font collection files (.ttc - TrueType Collection) can bundle multiple fonts into a single file. For such files, the returned [XFont](xfont/default.md) will be the first in the collection.

Similarly an [XFont](xfont/default.md) may be part of a collection. If that is the case then all fonts in that collection are added.

For collections you may wish to use [AddStore](05-addstore.md) which returns a set of fonts rather than just the first one.
