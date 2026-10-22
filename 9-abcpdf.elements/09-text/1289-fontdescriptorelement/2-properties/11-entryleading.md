# EntryLeading Property

## Notes

Represents the "Leading" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 282.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 342.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.

Leading is the extra vertical space between the bottom of one line's descenders and the top of the next line's ascenders. It is added to the sum of Ascent and the absolute value of Descent to give the total line height.

A value of zero means the lines are set solid with no extra space between them.
