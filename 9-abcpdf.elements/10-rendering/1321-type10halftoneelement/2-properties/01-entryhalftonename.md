# EntryHalftoneName Property

## Notes

Represents the "HalftoneName" entry of the type 10 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 132, page 313.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 130, page 375.

Like all HalftoneName values, this is raw byte data rather than a text string.

Devices with built-in threshold screens can use this value to skip the stream data and apply their own internal screen instead, provided the name matches one they recognise.
