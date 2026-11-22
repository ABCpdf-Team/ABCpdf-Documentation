# EntryMeasure Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MeasureElement`](../../1488-measureelement/index.md) | null | No | Represents the "Measure" entry of the polyline annotation object. |

## Notes

Represents the "Measure" entry of the polyline annotation object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a [MeasureElement](../../1488-measureelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 178, page 403.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=411)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 181, page 488.](https://www.iso.org/standard/63534.html)

The measure dictionary maps the polyline's page-space coordinates to real-world measurements.
