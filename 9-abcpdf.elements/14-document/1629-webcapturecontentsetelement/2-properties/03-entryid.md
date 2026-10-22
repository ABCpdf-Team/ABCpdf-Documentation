# EntryID Property

## Notes

Represents the "ID" entry of the web capture content set object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 352, page 622.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 388, page 801.

The ID entry holds a byte string uniquely identifying this content set within the document, used to cross-reference content sets from other structures.
