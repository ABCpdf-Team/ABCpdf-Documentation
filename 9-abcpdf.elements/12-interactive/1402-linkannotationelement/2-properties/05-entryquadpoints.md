# EntryQuadPoints Property

## Notes

Represents the "QuadPoints" entry of the link annotation object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 173, page 395.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 176, page 480.

Each group of eight numbers defines one quadrilateral corresponding to a word or line of text. The viewer uses the union of these quadrilaterals as the clickable region.
