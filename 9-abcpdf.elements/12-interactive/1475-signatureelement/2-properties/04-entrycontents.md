# EntryContents Property

## Notes

Represents the "Contents" entry of the signature dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 468.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.

The contents hex string holds the opaque signature bytes embedded at a fixed byte offset within the PDF. The byte range covered by the signature is defined by ByteRange; the contents bytes are excluded from that range.
