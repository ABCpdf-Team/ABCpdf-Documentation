# EntryPerms Property

## Notes

Represents the "Perms" entry of the standard security handler encryption dictionary object.

It is defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a string representing a PDF string object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 21, page 60.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.19, page 16.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 21, page 77.

The Perms entry, present in revision 6, holds a 16-byte encrypted block containing the P flags and other metadata. After decrypting the document, a reader decrypts and verifies this entry to confirm that the permission flags have not been modified.
