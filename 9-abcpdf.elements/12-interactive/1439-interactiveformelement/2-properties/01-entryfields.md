# EntryFields Property

## Notes

Represents the "Fields" entry of the interactive form dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains FieldElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 218, page 431.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 224, page 525.

The array contains indirect references to the top-level field dictionaries. Only root fields without a parent appear here; child fields are accessed through each field's Kids array.
