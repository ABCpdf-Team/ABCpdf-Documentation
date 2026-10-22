# EntryM Property

## Notes

Represents the "M" entry of the signature dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the StringAtom.DateToString and StringAtom.StringToDate functions.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 468.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 566.

The signing time is recorded as a PDF date string. This is the signer's claimed time and is not cryptographically protected unless a separate trusted timestamp token is embedded in the signature contents.
