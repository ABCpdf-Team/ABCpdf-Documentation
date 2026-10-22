# EntryEncoding Property

## Notes

Represents the "Encoding" entry of the fdf dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "PDFDocEncoding" if no value has been provided.

This item may take one of the following valid values:.

PDFDocEncodingShiftBigFiveGBKUHCutf

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 459.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 556.

The encoding entry names the character encoding for text field values in the FDF. When absent the encoding is determined by the PDF text-string encoding rules.
