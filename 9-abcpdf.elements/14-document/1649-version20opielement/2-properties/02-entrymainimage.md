# EntryMainImage Property

## Notes

Represents the "MainImage" entry of the version 2.0 opi dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 641.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 825.

The MainImage entry identifies the primary file in a multi-file image set as a byte string, telling the OPI processor which file contains the main image data.
