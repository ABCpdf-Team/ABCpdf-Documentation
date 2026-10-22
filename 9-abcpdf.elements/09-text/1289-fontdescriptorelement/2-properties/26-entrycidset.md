# EntryCIDSet Property

## Notes

Represents the "CIDSet" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.0 specification. It was deprecated in PDF 2.0.

It contains a StreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 281.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.

CIDSet is a stream whose body is a bit array. Bit N of the array, counting from the most significant bit of the first byte, indicates whether CID N is present in the font subset. A set bit means the CID is present.

This entry is required in PDF/A conformance levels that require embedded subset fonts to declare their CID coverage.
