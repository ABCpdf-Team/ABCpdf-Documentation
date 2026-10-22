# EntryF Property

## Notes

Represents the "F" entry of the stream object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains a FileSpecificationElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 5, page 20.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 5, page 32.

The F entry holds a file specification for a stream whose data resides in an external file rather than inline in the PDF. When present, the stream data in the PDF body is absent or empty and the actual data is read from the referenced file.
