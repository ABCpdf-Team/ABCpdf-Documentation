# EntryDuration Property

## Notes

Represents the "Duration" entry of the movie activation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of three different types:.

1) An integer representing a PDF numeric object.

2) A string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

3) An array which contains Elements.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 296, page 508.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 307, page 635.

The Duration entry gives the playback duration as a time value. Playback stops after this duration regardless of the remaining movie length.
