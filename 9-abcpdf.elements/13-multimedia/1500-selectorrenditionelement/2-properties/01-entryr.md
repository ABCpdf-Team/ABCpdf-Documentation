# EntryR Property

## Notes

Represents the "R" entry of the selector rendition dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains RenditionElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 272, page 492.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 283, page 616.

The R entry holds an array of rendition dictionaries to evaluate in order. A conforming reader tests the criteria of each candidate in sequence and activates the first one whose criteria are all satisfied.
