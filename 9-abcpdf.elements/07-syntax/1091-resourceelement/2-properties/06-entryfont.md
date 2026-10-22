# EntryFont Property

## Notes

Represents the "Font" entry of the resource dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an Element.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 33, page 83.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 34, page 112.

The Font entry maps resource names to font dictionaries. A content stream selects a named font using the Tf operator, which also sets the current font size. Every text-painting operation requires a current font set through this mechanism.
