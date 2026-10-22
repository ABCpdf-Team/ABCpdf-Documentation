# EntryW2 Property

## Notes

Represents the "W2" entry of the cidfont dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains Elements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 117, page 270.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 115, page 327.

This array overrides DW2 for specific CIDs or ranges, using the same format as W but with three values per CID: vertical advance, and the x and y components of the position vector.

Only present when the document uses vertical writing for some or all of the font's glyphs.
