# EntryBitsPerFlag Property

## Notes

Represents the "BitsPerFlag" entry of the type 6 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 3.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 84, page 196.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 83, page 244.

BitsPerFlag sets the bit depth of the flag field for each patch. The flag indicates how the patch connects to the preceding patch, sharing zero, one, or two edges.
