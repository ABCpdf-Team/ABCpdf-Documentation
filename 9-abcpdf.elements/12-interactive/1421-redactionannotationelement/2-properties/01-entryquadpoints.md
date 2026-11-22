# EntryQuadPoints Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "QuadPoints" entry of the redaction annotation object. |

## Notes

Represents the "QuadPoints" entry of the redaction annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 192, page 413.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=421)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 195, page 501.](https://www.iso.org/standard/63534.html)

The quad points define the precise regions to be redacted as quadrilaterals, typically one per word or rectangular run of text.
