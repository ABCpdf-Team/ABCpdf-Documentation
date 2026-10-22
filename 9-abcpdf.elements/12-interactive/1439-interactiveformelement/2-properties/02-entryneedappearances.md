# EntryNeedAppearances Property

## Notes

Represents the "NeedAppearances" entry of the interactive form dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification. It was deprecated in PDF 2.0.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 218, page 431.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 224, page 525.

When true the viewer must regenerate all field appearance streams before displaying the document. Writers that modify field values without regenerating appearances set this flag to delegate appearance generation to the viewer.
