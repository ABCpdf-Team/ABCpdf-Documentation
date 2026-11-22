# EntryQuadPoints Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "QuadPoints" entry of the text markup annotation object. |

## Notes

Represents the "QuadPoints" entry of the text markup annotation object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 179, page 403.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=411)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 182, page 489.](https://www.iso.org/standard/63534.html)

Each group of eight numbers defines one quadrilateral enclosing one line or run of text. The viewer uses the entire set of quadrilaterals to determine which text glyphs are covered by the markup.
