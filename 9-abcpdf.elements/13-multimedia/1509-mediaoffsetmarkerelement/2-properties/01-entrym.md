# EntryM Property

## Notes

Represents the "M" entry of the media offset marker dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 288, page 501.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 299, page 628.

The M entry holds the marker name as a byte string. The marker must be defined within the media file itself. Named markers allow clip sections to reference content-defined positions that remain valid even if the media file is edited.
