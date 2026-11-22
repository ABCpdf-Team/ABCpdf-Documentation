# EntryLC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "LC" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "LC" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 128.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=136)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.](https://www.iso.org/standard/63534.html)

The line cap style determines the shape applied to the open endpoints of a stroked path. A value of 0 produces a butt cap flush with the endpoint; 1 produces a round cap centred on the endpoint; 2 produces a square cap extending half the line width beyond the endpoint.

The cap style affects only open subpath endpoints, not joins between connected segments.
