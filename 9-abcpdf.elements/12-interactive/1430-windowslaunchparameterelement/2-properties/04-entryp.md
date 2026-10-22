# EntryP Property

## Notes

Represents the "P" entry of the windows launch parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 204, page 423.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 208, page 514.

The parameter string is passed to the launched application as its command-line argument. Used only when launching an executable, not when opening a document with its associated application.
