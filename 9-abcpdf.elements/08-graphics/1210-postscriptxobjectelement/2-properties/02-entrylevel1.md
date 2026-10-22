# EntryLevel1 Property

## Notes

Represents the "Level1" entry of the postscript xobject dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a StreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 88, page 202.

The Level1 entry holds an alternative PostScript fragment intended for PostScript Level 1 devices. When present, a PostScript output pipeline targeting a Level 1 device uses this stream instead of the main stream content, which may use Level 2 or Level 3 features.

When absent, only the main stream is available. A PostScript output device that cannot process Level 2 or Level 3 content and finds no Level1 alternative will encounter an error.
