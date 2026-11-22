# IsIdentity Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | n/a | Yes | Whether the font is a composite glyph encoded identity font |

## Notes

Whether the font is a composite glyph encoded identity font.

The normal way to identify a character in a font is to use a standard such as ASCII. Language encodings such as [Latin](../../../3-concepts/7-fonts.md) work this way.

For characters outside this range the PDF format allows you to reference font glyphs directly using the glyph index within the font. This is known as an identity encoding. Language encodings such as [Unicode](../../../3-concepts/7-fonts.md) work this way.

Identity encodings are very flexible but they do hardwire the document to a particular font file and as such the font must be embdded. Care should be taken when operating on identity encoded embedded font files.
