# EntryReference Property

## Notes

Represents the "Reference" entry of the signature dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains an array which contains SignatureReferenceElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 468.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 566.

Each element of the Reference array is a signature reference dictionary describing a transform applied before hashing. Multiple entries can specify different transforms for different parts of the signed content.
