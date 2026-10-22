# EntryAspect Property

## Notes

Represents the "Aspect" entry of the movie dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

Items in this array should have a minimum value of 0.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 295, page 508.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 306, page 635.

The Aspect entry holds a two-element array giving the natural width and height of the movie frame in pixels. The viewer uses this to compute the correct aspect ratio for display.
