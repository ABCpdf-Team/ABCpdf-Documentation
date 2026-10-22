# EntryHalftoneName Property

## Notes

Represents the "HalftoneName" entry of the type 6 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 131, page 310.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 129, page 372.

Like all HalftoneName entries, this holds raw byte data rather than readable text. The bytes can take any value.

Devices that maintain a library of built-in threshold screens can match this value against their internal list. A match allows the device to substitute its own screen data for the threshold array in the stream.
