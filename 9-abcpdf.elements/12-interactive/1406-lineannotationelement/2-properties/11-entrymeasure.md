# EntryMeasure Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MeasureElement`](../../1488-measureelement/index.md) | null | No | Represents the "Measure" entry of the line annotation object. |

## Notes

Represents the "Measure" entry of the line annotation object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a [MeasureElement](../../1488-measureelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 175, page 399.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=407)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 178, page 483.](https://www.iso.org/standard/63534.html)

The rectilinear measure dictionary maps the line's page-space length to a real-world measurement, allowing the annotation to display distances in physical units.
