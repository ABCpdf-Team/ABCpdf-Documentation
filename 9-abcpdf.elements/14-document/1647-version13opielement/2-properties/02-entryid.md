# EntryID Property

## Notes

Represents the "ID" entry of the version 1.3 opi dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 369, page 640.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 406, page 823.

The ID entry holds a byte string uniquely identifying this image in the OPI workflow, used by OPI servers to match proxy images to high-resolution originals.
