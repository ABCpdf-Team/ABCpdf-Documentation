# EntryID Property

## Notes

Represents the "ID" entry of the fdf dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 459.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 556.

The file identifier array contains two hex strings matching the PDF file identifier in the target document's trailer, providing an additional check that the FDF data is intended for the correct document version.
