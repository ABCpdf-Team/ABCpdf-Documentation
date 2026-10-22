# EntryHalftoneName Property

## Notes

Represents the "HalftoneName" entry of the type 16 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 133, page 314.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 131, page 376.

Like all HalftoneName values, this is raw byte data rather than a text string.

A device with a built-in 16-bit threshold screen can match this value and substitute its own data for the stream content, bypassing the threshold array entirely.
