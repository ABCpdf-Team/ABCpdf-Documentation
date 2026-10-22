# EntryAS Property

## Notes

Represents the "AS" entry of the optional content configuration dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains UsageApplicationElements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 101, page 230.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 99, page 282.

The AS entry is an array of usage application dictionaries. Each one specifies an event name and the groups and usage categories that should be automatically state-set when that event occurs.

For example, an AS entry for the Print event might instruct the viewer to consult the Print usage sub-dictionaries of the listed groups and set their states accordingly before printing.
