# EntrySigFlags Property

## Notes

Represents the "SigFlags" entry of the interactive form dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 218, page 431.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 224, page 525.

Bit 1 (SignaturesExist) is set when the document contains at least one signature field with a value. Bit 2 (AppendOnly) requires that the document only be saved by appending, preserving previously signed content.
