# EntryStatus Property

## Notes

Represents the "Status" entry of the fdf dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte PDFDocEncoding. This is broadly similar to ASCII but with different values above 127.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 459.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 556.

The status string is an optional message returned from a server after a form submission, displayed to the user to indicate whether submission succeeded.
