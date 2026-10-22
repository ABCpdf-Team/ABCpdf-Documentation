# EntryEFF Property

## Notes

Represents the "EFF" entry of the encryption dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a string representing a PDF name object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 20, page 57.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.18, page 14.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 20, page 73.

The EFF entry names the crypt filter applied to embedded file streams. When absent, embedded file streams use the filter named by StmF. An explicit EFF value allows embedded files to be encrypted differently from other streams, for example to leave embedded files unencrypted while the rest of the document is encrypted.
