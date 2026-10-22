# EntryBitsPerFlag Property

## Notes

Represents the "BitsPerFlag" entry of the type 4 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 82, page 189.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 81, page 237.

BitsPerFlag sets the number of bits used for the flag field of each vertex. Valid values are 2, 4, and 8. The flag indicates whether the vertex starts a new triangle (0), shares an edge with the previous triangle from vertex 1 to vertex 2 (1), or from vertex 2 to vertex 3 (2).
