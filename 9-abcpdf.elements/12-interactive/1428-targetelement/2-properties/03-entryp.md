# EntryP Property

## Notes

Represents the "P" entry of the target dictionary object.

It is defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) An integer representing a PDF numeric object.

2) A string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 202, page 420.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 205, page 510.

When multiple embedded files share the same name, P selects which one to target: an integer gives the zero-based index into the list, and a string gives an annotated label.
