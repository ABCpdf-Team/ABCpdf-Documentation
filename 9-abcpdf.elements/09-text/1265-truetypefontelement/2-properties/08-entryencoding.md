# EntryEncoding Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Encoding" entry of the truetype font dictionary object. |

## Notes

Represents the "Encoding" entry of the truetype font dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

This item may take one of the following valid values:.

- MacRomanEncoding
- MacExpertEncoding
- WinAnsiEncoding

.

2\) An [EncodingElement](../../1271-encodingelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 257.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=265)

TrueType fonts can use any of the three named standard encodings or an EncodingElement dictionary for custom mappings. The encoding controls which character codes map to which glyph names.

For symbolic TrueType fonts, encoding is typically absent and the font uses its own internal mapping. For non-symbolic fonts, providing an explicit encoding ensures predictable rendering.
