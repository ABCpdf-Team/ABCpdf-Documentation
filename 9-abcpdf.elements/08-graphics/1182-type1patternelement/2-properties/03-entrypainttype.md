# EntryPaintType Property

## Notes

Represents the "PaintType" entry of the type 1 pattern dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 75, page 175.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 74, page 218.

A PaintType of 1 means the pattern content stream includes its own color specifications and is painted using those colors regardless of the current color at the time of painting. A PaintType of 2 means the pattern content stream uses no color operators; the current color at the time of painting is applied throughout the pattern cell.
