# EntryW Property

## Notes

Represents the "W" entry of the cidfont dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains Elements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 117, page 270.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 115, page 327.

The array uses a compact format. A group can be specified as three elements: a start CID, an end CID, and a single width applied to all CIDs in that range. Alternatively, a start CID followed by an array of widths assigns individual widths to consecutive CIDs from the start.

Only CIDs that differ from DW need to appear in this array. The two formats can be mixed freely within the same W array.
