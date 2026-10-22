# EntryUC Property

## Notes

Represents the "UC" entry of the floating window parameters dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of true if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 284, page 500.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 295, page 626.

The UC entry, when true, allows the user to close the floating window before playback ends. When false, the window stays open until playback finishes or the viewer closes it programmatically.
