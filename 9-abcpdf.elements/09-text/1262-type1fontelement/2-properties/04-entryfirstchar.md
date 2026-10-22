# EntryFirstChar Property

## Notes

Represents the "FirstChar" entry of the type 1 font dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 255.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 310.

This value is the character code of the first entry in the Widths array. It is a value in the range 0 to 255. Together with LastChar it defines the span of codes for which explicit widths are supplied.

Codes below this value are not in the Widths array. If text uses such a code, the viewer falls back to the MissingWidth value from the FontDescriptor.
