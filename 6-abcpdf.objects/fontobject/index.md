# FontObject Class

A specific font as used in the document.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       WebSupergoo.ABCpdf14.Objects.FontObject`

`Implements: IEquatable<FontObject>`

## Methods

| Method | Description |
| --- | --- |
| Ⓢ ⚠ [GetEncoding](1-methods/getencoding.md) | Obtain a standard encoding dictionary for use with PDF text operators. |
| Ⓢ ⚠ [VetText](1-methods/vettext.md) | Make a string of text safe for use in a specified encoding. |
| [EmbedFont](1-methods/embedfont.md) | Search for and embed a font file into this font object. |
| ⚠ [EncodeText](1-methods/encodetext.md) | Encode text for use with PDF text operators. |
| [GetVerticalMetric](1-methods/getverticalmetric.md) | Get the vertical metric for a character. |
| [RegenerateToUnicode](1-methods/regeneratetounicode.md) | Attempt to regenerate a ToUnicode map. |
| [Subset](1-methods/subset.md) | Subset a previously embedded font. |
| [UnembedFont](1-methods/unembedfont.md) | Unembed the font if this is a simple operation. |

## Properties

| Property | Description |
| --- | --- |
| [BaseFont](2-properties/basefont.md) | The PostScript name of the font. |
| [EmbeddedFont](2-properties/embeddedfont.md) | The embedded font file. |
| [IsComposite](2-properties/iscomposite.md) | Whether the font is a complex composite font. |
| [IsIdentity](2-properties/isidentity.md) | Whether the font is a composite glyph encoded identity font. |
| [IsSubset](2-properties/issubset.md) | Whether the font contains an embedded subset. |
| [IsVertical](2-properties/isvertical.md) | Whether the font is for vertical writing. |
| [WritingMode](2-properties/writingmode.md) | Gets the font writing mode. |
| [Widths](2-properties/widths.md) | The widths of the characters in the font. |
| [CharToEncoding](2-properties/chartoencoding.md) | The Unicode to glyph mapping table for all the characters in the font. |
| [CheckGlyphs](2-properties/checkglyphs.md) | Whether to exclude invalid glyphs from our lookup tables. |
| [DefaultWidth](2-properties/defaultwidth.md) | The default character width. |
| [EncodingToChar](2-properties/encodingtochar.md) | The glyph to Unicode mapping table for all the characters in the font. |
| [EncodingToString](2-properties/encodingtostring.md) | The glyph to Unicode string mapping table. |
| [Flags](2-properties/flags.md) | The Font Descriptor Flags entry. |
| [FontAscender](2-properties/fontascender.md) | The ascender for the glyphs in this font. |
| [FontAscent](2-properties/fontascent.md) | The ascent for the glyphs in this font. |
| [FontBBox](2-properties/fontbbox.md) | The bounding box for the glyphs in this font. |
| [FontDescender](2-properties/fontdescender.md) | The descender for the glyphs in this font. |
| [FontDescent](2-properties/fontdescent.md) | The descent for the glyphs in this font. |
| [FontLineGap](2-properties/fontlinegap.md) | The line gap for the glyphs in this font. |
| [FontLineSpacing](2-properties/fontlinespacing.md) | The line spacing for the glyphs in this font. |
| [IsDescendent](2-properties/isdescendent.md) | Whether the font is a descendent of a complex composite font. |
| [Kernings](2-properties/kernings.md) | The kerning values for all kerning character pairs. |
| [NativeWidths](2-properties/nativewidths.md) | The character widths indexed by native character code. |
| [RuneWidths](2-properties/runewidths.md) | The character widths indexed by rune. |
