# EntryView Property

## Notes

Represents the "View" entry of the collection dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "D" if no value has been provided.

This item may take one of the following valid values:.

DTHC

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 155, page 371.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6, page 29.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 153, page 446.

The view name selects the initial presentation mode: D (details/list), T (tiles), H (hidden), or C (custom navigator). Viewers that do not support a named mode fall back to their default.
