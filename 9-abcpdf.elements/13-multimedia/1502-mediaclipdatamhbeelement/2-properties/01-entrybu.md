# EntryBU Property

## Notes

Represents the "BU" entry of the media clip data mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 276, page 494.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 287, page 619.

The BU entry holds a base URL string used to resolve relative URLs that appear within the media content. This is important for media such as HTML pages that reference external stylesheets, scripts, or sub-clips using relative addresses.
