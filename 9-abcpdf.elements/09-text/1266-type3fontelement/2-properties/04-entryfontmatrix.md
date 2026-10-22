# EntryFontMatrix Property

## Notes

Represents the "FontMatrix" entry of the type 3 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 314.

The matrix is a six-element array representing an affine transformation. The conventional value is [0.001 0 0 0.001 0 0], which scales glyph space so that 1000 glyph units equal one text space unit.

Using a different matrix can simplify the glyph stream programs. For example, a matrix of [1 0 0 1 0 0] means the glyph streams work directly in text space units, which can be convenient for custom symbol fonts.
