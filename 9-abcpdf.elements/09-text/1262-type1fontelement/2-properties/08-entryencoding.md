# EntryEncoding Property

## Notes

Represents the "Encoding" entry of the type 1 font dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A string representing a PDF name object.

This item may take one of the following valid values:.

MacRomanEncodingMacExpertEncodingWinAnsiEncoding.

2) An EncodingElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 255.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 311.

When the value is a name, it selects one of three standard encodings: MacRomanEncoding, MacExpertEncoding, or WinAnsiEncoding. These cover the most common Western character sets.

When the value is an EncodingElement dictionary, the Differences array in that dictionary lists per-glyph overrides applied on top of the base encoding. This allows a document to remap individual character codes to specific glyph names without replacing the entire encoding.

If this entry is absent, the viewer uses the font's built-in encoding. For the standard Type1 fonts the built-in encodings are well-defined; for other fonts the built-in encoding may vary.
