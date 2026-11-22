# EntryPath Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Path" entry of the polygon annotation object. |

## Notes

Represents the "Path" entry of the polygon annotation object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 178, page 402.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=410)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 181, page 488.](https://www.iso.org/standard/63534.html)

The path array (PDF 2.0) replaces or supplements Vertices with a more expressive representation supporting Bezier curve segments as well as straight lines.
