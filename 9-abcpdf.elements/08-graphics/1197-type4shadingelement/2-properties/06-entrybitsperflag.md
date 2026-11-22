# EntryBitsPerFlag Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "BitsPerFlag" entry of the type 4 shading dictionary object. |

## Notes

Represents the "BitsPerFlag" entry of the type 4 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 82, page 189.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=197)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 81, page 237.](https://www.iso.org/standard/63534.html)

BitsPerFlag sets the number of bits used for the flag field of each vertex. Valid values are 2, 4, and 8. The flag indicates whether the vertex starts a new triangle (0), shares an edge with the previous triangle from vertex 1 to vertex 2 (1), or from vertex 2 to vertex 3 (2).
