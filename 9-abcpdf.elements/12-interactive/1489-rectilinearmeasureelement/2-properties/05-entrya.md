# EntryA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`NumberFormatElement`](../../1490-numberformatelement/index.md)`>` | null | No | Represents the "A" entry of the rectilinear measure dictionary object. |

## Notes

Represents the "A" entry of the rectilinear measure dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [NumberFormatElements](../../1490-numberformatelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 262, page 481.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=489)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 267, page 594.](https://www.iso.org/standard/63534.html)

The area format array specifies how computed areas are expressed, derived from applying the coordinate scale to a page-space polygon area.
