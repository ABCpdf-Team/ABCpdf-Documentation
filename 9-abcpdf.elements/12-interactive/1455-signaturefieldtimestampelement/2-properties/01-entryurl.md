# EntryURL Property

## Notes

Represents the "URL" entry of the signature field time stamp dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 234, page 447.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 237, page 542.

The URL string identifies the HTTP endpoint of a trusted time-stamping authority conforming to RFC 3161. The signing application sends a timestamp request to this URL and embeds the response in the signature.
