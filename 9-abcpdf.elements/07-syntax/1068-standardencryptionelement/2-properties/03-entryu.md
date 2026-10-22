# EntryU Property

## Notes

Represents the "U" entry of the standard security handler encryption dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 21, page 60.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.19, page 16.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 21, page 77.

The U entry holds a hash or encrypted value derived from the user password and the file encryption key. A reader uses this entry to verify that a supplied user password is correct before decrypting the document.
