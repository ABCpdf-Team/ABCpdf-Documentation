# EntryOpt Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Opt" entry of the fdf field dictionary object. |

## Notes

Represents the "Opt" entry of the fdf field dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 246, page 462.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=470)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 249, page 560.](https://www.iso.org/standard/63534.html)

For choice fields Opt replaces the target field's option list with the values provided here, allowing a server to update the available choices alongside the selected value.
