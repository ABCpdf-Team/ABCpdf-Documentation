# EntryDirection Property

## Notes

Represents the "Direction" entry of the viewer preferences dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "L2R" if no value has been provided.

This item may take one of the following valid values:.

L2RR2L

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 150, page 363.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.1, page 28.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 147, page 435.

The reading direction affects how the viewer positions pages in a two-up or facing-pages layout. L2R places the first page on the left in a two-page spread; R2L places it on the right, appropriate for right-to-left scripts such as Arabic and Hebrew.
