# EntryWMode Property

## Notes

Represents the "WMode" entry of the cmap stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 120, page 277.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 118, page 336.

A value of 0 selects horizontal writing, where glyphs are placed left to right. A value of 1 selects vertical writing, where glyphs are placed top to bottom.

The WMode in the CMap should match the writing direction intended by the document. A mismatch between CMap WMode and the actual text direction can cause incorrect glyph positioning.
