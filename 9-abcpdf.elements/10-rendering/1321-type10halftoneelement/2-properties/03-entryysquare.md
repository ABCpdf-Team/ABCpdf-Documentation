# EntryYsquare Property

## Notes

Represents the "Ysquare" entry of the type 10 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 132, page 313.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 130, page 375.

This value is the side length of the second square region. Its threshold data occupies the Ysquare-squared bytes that follow the first region in the stream body.

The total stream length must equal Xsquare squared plus Ysquare squared bytes. Any deviation from this length makes the stream malformed for this halftone type.
