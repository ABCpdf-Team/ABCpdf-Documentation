# EntrySynchronous Property

## Notes

Represents the "Synchronous" entry of the movie activation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 296, page 509.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 307, page 636.

The Synchronous entry, when true, causes the viewer to pause all other processing until the movie finishes playing. This ensures that subsequent actions occur only after playback is complete.
