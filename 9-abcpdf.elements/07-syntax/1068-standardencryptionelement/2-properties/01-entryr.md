# EntryR Property

## Notes

Represents the "R" entry of the standard security handler encryption dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

This item may take one of the following valid values:.

2345

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 21, page 60.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.19, page 16.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 21, page 77.

The R entry gives the revision of the standard security handler. Higher revisions correspond to stronger algorithms and larger key sizes. Revision 6, defined in PDF 2.0, uses AES-256 with a randomised key and is not backward compatible with earlier revisions.
