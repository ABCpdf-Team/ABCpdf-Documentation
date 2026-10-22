# EntryUserProperties Property

## Notes

Represents the "UserProperties" entry of the mark information dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 321, page 556.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 353, page 719.

The UserProperties entry, when true, indicates that at least one structure element carries a user properties attribute dictionary. This flag allows processors to quickly determine whether to look for user property data.
