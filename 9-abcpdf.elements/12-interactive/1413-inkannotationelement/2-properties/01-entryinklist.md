# EntryInkList Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "InkList" entry of the ink annotation object. |

## Notes

Represents the "InkList" entry of the ink annotation object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 182, page 405.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=413)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 185, page 491.](https://www.iso.org/standard/63534.html)

The ink list is an array of strokes; each stroke is an array of coordinate pairs in default user space. The viewer renders each stroke as a smooth connected curve through the given points.
