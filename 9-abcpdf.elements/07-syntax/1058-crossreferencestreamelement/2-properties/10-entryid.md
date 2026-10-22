# EntryID Property

## Notes

Represents the "ID" entry of the cross-reference stream dictionary object.

It is defined as part of the PDF 1.1 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 17, page 50.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 17, page 65.

The ID entry in the cross-reference stream carries the two-element file identifier array, serving the same role as ID in the traditional trailer. Its presence here is required when the document is encrypted.
