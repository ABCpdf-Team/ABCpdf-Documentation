# EntryStartResource Property

## Notes

Represents the "StartResource" entry of the slideshow dictionary object.

It is a required entry defined as part of the PDF 1.4 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 297, page 510.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 308, page 637.

The StartResource entry holds the name of the resource in the Resources dictionary to display first when the slideshow begins. This is the key of the initial image or media object.
