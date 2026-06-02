# AddFonts Function

Adds fonts from a file to this font store.

## Syntax

[C#]

```csharp
<a href="../../xfont/default.htm">XFont</a>[] AddFonts(string path, bool autoDeleteFile)
```

## Params

| **Name** | **Description** |
| --- | --- |
| path | The path to the font file. |
| autoDeleteFile | Whether to delete the file when the font is no longer referenced. |
| return | An array of XFont objects representing the complete set of fonts in the font file. |

## Notes

Adds fonts from a file to this font store.

Most font files (.ttf, .otf, .pfm, etc.) contain a single font face, so a returned array will contain exactly one element.

However, font collection files (.ttc - TrueType Collection) can bundle multiple fonts into a single file. For such files, the returned array will contain one[ XFont ](xfont/default.md) for each font face found in the collection.
