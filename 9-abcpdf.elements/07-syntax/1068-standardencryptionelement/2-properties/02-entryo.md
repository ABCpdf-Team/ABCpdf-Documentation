# EntryO Property

## Notes

Represents the "O" entry of the standard security handler encryption dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 21, page 60.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.19, page 16.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 21, page 77.

The O entry holds a hash or encrypted value derived from the owner password. In revisions 2 to 5 it contains the user password encrypted with a key derived from the owner password. In revision 6 it contains a hash used to validate the owner password directly.
