# AddFont Function

Adds a font from a file to this font store.

## Syntax

*C#*

[`XFont`](../../xfont/index.md)` AddFont(string path, bool autoDeleteFile)`  
[`XFont`](../../xfont/index.md)` AddFont(`[`XFont`](../../xfont/index.md)` font)`

## Params

| Name | Description |
| :---: | --- |
| path | The path to the font file. |
| autoDeleteFile | Whether to delete the file when the font is no longer referenced. |
| font | The font to add. |
| return | The added font. |

## Notes

Adds a font from a file to this font store.

Most font files (.ttf, .otf, .pfm, etc.) contain a single font face, so the returned [XFont](../../xfont/index.md) is the font in that file.

However, font collection files (.ttc - TrueType Collection) can bundle multiple fonts into a single file. For such files, the returned [XFont](../../xfont/index.md) will be the first in the collection.

Similarly an [XFont](../../xfont/index.md) may be part of a collection. If that is the case then all fonts in that collection are added.

For collections you may wish to use [AddStore](05-addstore.md) which returns a set of fonts rather than just the first one.
