# EntryFontName Property

## Notes

Represents the "FontName" entry of the font descriptor object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 281.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.

This name must match the BaseFont entry in the font dictionary that references this descriptor. For subset fonts the name includes the six-letter uppercase subset tag prefix.

Viewers use this to verify that the descriptor belongs to the intended font.
