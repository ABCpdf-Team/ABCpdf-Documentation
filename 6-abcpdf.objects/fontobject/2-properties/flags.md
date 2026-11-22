# Flags Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `FontFlags` | n/a | No | The Font Descriptor Flags entry |

## Notes

The Font Descriptor Flags entry.

The FontFlags type is a flags enumeration so different values can be combined together using bitwise operations.

The FontFlags enumeration may take the following values:

- FixedPitch - All glyphs have the same width; as opposed to proportional or variable-pitch fonts, which have different widths.
- Serif - Glyphs have serifs - short strokes drawn at an angle on the top and bottom of glyph stems. Sans serif fonts do not have serifs.
- Symbolic - Font contains glyphs outside the Adobe standard Latin character set. This flag and the Nonsymbolic flag are mutually exclusive.
- Script - Glyphs look like cursive handwriting.
- Nonsymbolic - Font uses the Adobe standard Latin character set or a subset of it.
- Italic - Glyphs have slanted dominant vertical strokes.
- AllCap - Font contains no lowercase letters.
- SmallCap - Lower case letters in this font look like smaller versions of their upper case equivalents.
- ForceBold - Whether bold glyphs shall be painted with extra pixels even at very small text sizes.

The flags detailed here are descriptive. So reading them from an existent font object will provide information on the style. However changing them will not necessarily change it. If the font is referenced then the viewing application will need to find an appropriate system font and it should try to take account of these flags. However if the fonts is embedded then changing the flags will not change the underlying embedded font. Make sure you understand these concepts before you change these values.

> **How do I manipulate flags enumerations?**
>
> To check a flag you can write code of the following form:
>
> ```csharp
> bool isSymbolic = font.Flags.HasFlag(FontObject.FontFlags.Symbolic);
> ```
>
> To set the flag:
>
> ```csharp
> font.Flags |= FontObject.FontFlags.Symbolic;
> ```
>
> To clear the flag:
>
> ```csharp
> font.Flags &= !FontObject.FontFlags.Symbolic;
> ```
