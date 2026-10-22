# EntryTID Property

## Notes

Represents the "TID" entry of the web capture page set object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 353, page 622.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 389, page 802.

The TID entry holds a byte string transaction identifier linking this page set to a specific capture transaction. Multiple page sets captured together share the same TID.
