# EntryD Property

## Notes

Represents the "D" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an array which contains Elements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 128.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.

The dash pattern is an array and phase pair. The array alternates between dash lengths and gap lengths in user space units. The phase shifts the start position within the pattern.

An empty array with any phase produces a solid line. Unequal dash and gap lengths create asymmetric patterns. The pattern repeats for the full length of each stroked path segment.
