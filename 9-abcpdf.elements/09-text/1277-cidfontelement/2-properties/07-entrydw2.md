# EntryDW2 Property

## Notes

Represents the "DW2" entry of the cidfont dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 117, page 270.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 115, page 327.

This entry gives the default metrics for vertically written glyphs as a two-element array: the vertical advance and the vertical position of the origin. Both are in glyph space units.

The default value of [880 -1000] positions the origin one unit below the top of a 1000-unit em square and gives an advance of 880 units downward.
