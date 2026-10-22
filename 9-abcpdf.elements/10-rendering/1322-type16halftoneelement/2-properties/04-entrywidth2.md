# EntryWidth2 Property

## Notes

Represents the "Width2" entry of the type 16 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 133, page 314.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 131, page 376.

This value is only present when the halftone uses two arrays to form a non-rectangular cell. It gives the column count of the second array. Each of its samples is two bytes wide.

When both Width2 and Height2 are supplied, the stream contains two back-to-back blocks: the first sized by Width and Height, the second by Width2 and Height2. The viewer uses both blocks together to build the cell.
