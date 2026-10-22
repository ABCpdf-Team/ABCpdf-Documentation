# EntryPS Property

## Notes

Represents the "PS" entry of the projection dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A double representing a PDF numeric object.

It should have a positive value.

2) A string representing a PDF name object.

The PDF specification states that this item assumes a value of "W" if no value has been provided.

This item may take one of the following valid values:.

WHMinMax

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 305, page 524.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 316, page 655.

The PS entry names how the field of view is measured: W for the full width angle, H for the full height angle, Min for the smaller of width and height, and Max for the larger.
