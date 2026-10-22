# EntryID Property

## Notes

Represents the "ID" entry of the full file specification dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 44, page 103.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.41, page 26.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 43, page 133.

The ID entry holds a two-element array of byte strings identifying the file, matching the ID array format used in PDF file trailers. Readers may use this to verify that the correct version of a remote file is being accessed.
