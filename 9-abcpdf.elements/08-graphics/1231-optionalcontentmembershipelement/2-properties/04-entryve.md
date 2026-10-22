# EntryVE Property

## Notes

Represents the "VE" entry of the optional content membership dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains an array which contains Elements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 99, page 223.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 97, page 275.

The VE entry holds a visibility expression tree built from AND, OR, and NOT operators applied to OCG references. It allows arbitrary Boolean combinations of group states that cannot be expressed with the simpler P policy.

When VE is present, P is ignored. VE was added in PDF 2.0 to support more complex layer logic required in advanced document workflows.
