# EntryCharSet Property

## Notes

Represents the "CharSet" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.1 specification. It was deprecated in PDF 2.0.

It contains a string representing a PDF string object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 283.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 342.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.

CharSet is a byte string formatted as a PostScript array of glyph names, such as (/A /B /C). It lists all the glyphs present in a Type 1 font subset.

Viewers can use CharSet to determine which character codes a subset font can render without decompressing and parsing the font program. It is not used for TrueType or CFF fonts.
