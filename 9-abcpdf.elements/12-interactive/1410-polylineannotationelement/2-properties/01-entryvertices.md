# EntryVertices Property

## Notes

Represents the "Vertices" entry of the polyline annotation object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 178, page 402.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 181, page 487.

The vertices array holds coordinate pairs defining the endpoints and intermediate points of the polyline. The viewer draws straight segments connecting each consecutive pair; the path is not closed.
