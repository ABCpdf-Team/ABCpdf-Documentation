# EntryState Property

## Notes

Represents the "State" entry of the set-ocg-state action object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains Elements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 213, page 427.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 217, page 519.

The state array is a flat list of alternating usage verbs and group references: ON, OFF, or Toggle followed by one or more indirect references to optional content groups. Multiple verb-group sequences may appear in the same array.
