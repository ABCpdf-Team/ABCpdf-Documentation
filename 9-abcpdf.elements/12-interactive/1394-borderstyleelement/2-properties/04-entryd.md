# EntryD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "D" entry of the border style dictionary object. |

## Notes

Represents the "D" entry of the border style dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 166, page 387.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=395)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 168, page 470.](https://www.iso.org/standard/63534.html)

The dash array is used only when the S entry is Dashed. It is interpreted identically to the PDF graphics dash-array operator: alternating lengths of dashes and gaps.
