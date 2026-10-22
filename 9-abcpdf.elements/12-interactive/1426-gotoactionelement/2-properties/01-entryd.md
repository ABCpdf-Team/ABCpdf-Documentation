# EntryD Property

## Notes

Represents the "D" entry of the go-to action object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of three different types:.

1) A string representing a PDF name object.

2) A string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

3) A DestinationElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 199, page 418.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 202, page 507.

The destination may be an explicit array or a string naming an entry in the document's named destinations tree. Explicit destinations embed the page number directly; named destinations decouple the action from the page index.
