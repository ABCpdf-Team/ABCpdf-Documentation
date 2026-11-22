# EntryPath Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Path" entry of the ink annotation object. |

## Notes

Represents the "Path" entry of the ink annotation object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 182, page 405.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=413)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 185, page 491.](https://www.iso.org/standard/63534.html)

The path entry (PDF 2.0) provides an alternate compact representation of the ink strokes supporting Bezier segments.
