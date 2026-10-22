# EntryPages Property

## Notes

Represents the "Pages" entry of the separation dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains PageObjectElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 364, page 632.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 400, page 813.

The Pages entry holds an array of indirect references to all separation page objects for the composite page. This links all separations together so any one separation can locate the others.
