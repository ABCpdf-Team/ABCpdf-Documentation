# EntryColumns Property

## Notes

Represents the "Columns" entry of the ccittfax parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1728 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 11, page 31.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 11, page 44.

The Columns entry gives the width of the image in pixels. The encoder and decoder use this value to know how many pixels constitute one scan line.
