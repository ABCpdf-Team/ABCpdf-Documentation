# EntryEncoding Property

## Notes

Represents the "Encoding" entry of the truetype font dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A string representing a PDF name object.

This item may take one of the following valid values:.

MacRomanEncodingMacExpertEncodingWinAnsiEncoding.

2) An EncodingElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 257.

TrueType fonts can use any of the three named standard encodings or an EncodingElement dictionary for custom mappings. The encoding controls which character codes map to which glyph names.

For symbolic TrueType fonts, encoding is typically absent and the font uses its own internal mapping. For non-symbolic fonts, providing an explicit encoding ensures predictable rendering.
