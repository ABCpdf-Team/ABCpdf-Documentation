# EntryDifferences Property

## Notes

Represents the "Differences" entry of the encoding dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains Elements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 114, page 263.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 112, page 320.

The array alternates between integer code points and glyph name strings. Each integer sets the starting code for the names that follow it. The names are assigned to consecutive codes starting from that integer.

For example, the sequence [32 /space /exclam /quotedbl] maps code 32 to the glyph named space, code 33 to exclam, and code 34 to quotedbl. A new integer later in the array starts a fresh run at a different code position.

Only the positions that differ from the base encoding need to appear here. Codes not listed keep their base encoding value.
