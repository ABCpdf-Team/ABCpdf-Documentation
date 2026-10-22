# EntryBitsPerCoordinate Property

## Notes

Represents the "BitsPerCoordinate" entry of the type 6 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 84, page 196.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 83, page 244.

BitsPerCoordinate sets the bit depth of the 12 control point coordinates per patch. Valid values are 1, 2, 4, 8, 12, 16, 24, and 32. The Decode array converts these integers to actual coordinates.
