# EntryFontFamily Property

## Notes

Represents the "FontFamily" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 281.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.

This is a human-readable family name such as Times or Helvetica, stored as a byte string. It is used for font selection in some environments but is not relied upon for rendering.
