# EntryDest Property

## Notes

Represents the "Dest" entry of the outline item dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of three different types:.

1) A string representing a PDF name object.

2) A string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

3) A DestinationElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 153, page 369.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 151, page 443.

Either Dest or A must be present but not both. Dest is used for simple in-document navigation; A is used when activation should trigger a richer action type.
