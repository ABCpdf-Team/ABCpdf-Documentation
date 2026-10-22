# EntryXsquare Property

## Notes

Represents the "Xsquare" entry of the type 10 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 132, page 313.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 130, page 375.

This value is the side length of the first square region that makes up the halftone cell. The first Xsquare-squared bytes of the stream body hold the threshold values for this region.

By combining two square regions of different sizes, the type 10 cell can tile at angles that a purely rectangular cell cannot reach without significant deviation. The Xsquare and Ysquare values together determine which angles are achievable.
