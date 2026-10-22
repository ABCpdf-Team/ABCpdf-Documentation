# EntryURI Property

## Notes

Represents the "URI" entry of the uri action object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 206, page 424.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 210, page 515.

The URI string may be absolute or relative. If relative it is resolved against the catalog base URI. The URI may use any scheme the viewer supports.
