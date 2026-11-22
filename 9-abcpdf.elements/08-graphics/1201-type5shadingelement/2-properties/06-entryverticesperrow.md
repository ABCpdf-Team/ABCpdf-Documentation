# EntryVerticesPerRow Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "VerticesPerRow" entry of the type 5 shading dictionary object. |

## Notes

Represents the "VerticesPerRow" entry of the type 5 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 83, page 193.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=201)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 82, page 240.](https://www.iso.org/standard/63534.html)

VerticesPerRow gives the fixed number of vertices in each row of the lattice. The renderer pairs adjacent rows to form a strip of triangles. The value must be at least 2.

All rows must have the same number of vertices. The total number of vertex records in the stream divided by VerticesPerRow gives the number of rows.
