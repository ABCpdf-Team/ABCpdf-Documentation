# CharToEncoding Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IDictionary<char, char>` | n/a | Yes | The Unicode to glyph mapping table for all the characters in the font |

## Notes

The Unicode to glyph mapping table for all the characters in the font.

In this context, the glyph value is the value which occurs in the content stream when using this font. While the encoding used is often similar to ASCII, it may vary considerably depending on the way the font has been included in the PDF.

To map from the glyph encoding to a Unicode character see [EncodingToChar](encodingtochar.md).
