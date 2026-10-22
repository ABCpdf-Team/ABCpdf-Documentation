# EntryPoster Property

## Notes

Represents the "Poster" entry of the movie dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

2) An ImageXObjectElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 295, page 508.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 306, page 635.

The Poster entry specifies the poster image shown before playback begins. A boolean true causes the viewer to use a frame from the movie as the poster. An indirect reference points to an image XObject used as the poster.
