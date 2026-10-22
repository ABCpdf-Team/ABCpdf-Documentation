# EntryBitsPerCoordinate Property

## Notes

Represents the "BitsPerCoordinate" entry of the type 4 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 82, page 189.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 81, page 236.

BitsPerCoordinate sets the number of bits used to encode each coordinate value in the stream. Valid values are 1, 2, 4, 8, 12, 16, 24, and 32. The Decode array maps the resulting integer range to the actual coordinate range.
