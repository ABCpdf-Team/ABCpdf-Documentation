# EntryMD5 Property

## Notes

Represents the "MD5" entry of the external data dictionary used to markup 3d annotations object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 313, page 543.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 324, page 676.

The MD5 entry holds a 16-byte MD5 digest of the external data file. A reader can verify the integrity of the loaded file by computing and comparing this digest before using the data.
