# EntryOpen Property

## Notes

Represents the "Open" entry of the pop-up annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 183, page 406.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 186, page 492.

When true the pop-up window is displayed in its open state when the page is viewed. Writers that save while a pop-up is open can persist that state so the next viewer opens it in the same condition.
