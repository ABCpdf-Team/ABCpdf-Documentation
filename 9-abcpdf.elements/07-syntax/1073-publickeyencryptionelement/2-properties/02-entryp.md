# EntryP Property

## Notes

Represents the "P" entry of the public-key security handler encryption dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 23, page 65.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 23, page 86.

The P entry in the public-key encryption dictionary encodes the permission flags for this document, with the same bit definitions as in the standard security handler. These flags are embedded in each CMS EnvelopedData structure and are enforced after decryption.
