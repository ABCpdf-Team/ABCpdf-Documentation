# EntryDW Property

## Notes

Represents the "DW" entry of the cidfont dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1000 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 117, page 269.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 115, page 327.

This value gives the default advance width for all CIDs not listed in the W array. It is expressed in the same coordinate system as the W entries: thousandths of a text space unit.

A value of 1000 is common and means one text space unit per glyph by default.
