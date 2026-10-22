# EntryFirstChar Property

## Notes

Represents the "FirstChar" entry of the type 3 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 315.

This is the character code of the first entry in the Widths array. The type 3 glyph streams report their own widths via the d0 or d1 operator, but the Widths array is still required for layout purposes.
