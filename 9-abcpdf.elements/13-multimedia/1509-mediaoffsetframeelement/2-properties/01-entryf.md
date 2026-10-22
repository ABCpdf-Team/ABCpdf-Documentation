# EntryF Property

## Notes

Represents the "F" entry of the media offset frame dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 287, page 501.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 298, page 628.

The F entry holds the zero-based frame index as a non-negative integer. Frame 0 is the first frame of the clip. The media player seeks to this frame when the offset is applied.
