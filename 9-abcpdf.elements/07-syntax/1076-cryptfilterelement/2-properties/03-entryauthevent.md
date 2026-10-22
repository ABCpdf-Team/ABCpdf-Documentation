# EntryAuthEvent Property

## Notes

Represents the "AuthEvent" entry of the crypt filter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "DocOpen" if no value has been provided.

This item may take one of the following valid values:.

DocOpenEFOpen

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 25, page 68.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.22, page 22.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 25, page 90.

The AuthEvent entry specifies when the user must authenticate to access content protected by this filter. DocOpen means authentication is required when the document is opened. EFOpen means authentication is deferred until an embedded file using this filter is accessed.
