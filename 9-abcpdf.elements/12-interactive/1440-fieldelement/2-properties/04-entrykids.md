# EntryKids Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FieldElement`](../index.md)`>` | null | No | Represents the "Kids" entry of the field dictionary object. |

## Notes

Represents the "Kids" entry of the field dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains [FieldElements](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 220, page 433.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=441)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 226, page 527.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 222, page 434.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=442)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 228, page 529.](https://www.iso.org/standard/63534.html)

For non-leaf fields Kids lists child field dictionaries. For leaf fields with multiple widget annotations it lists the widget annotation dictionaries. Both types of reference may appear in the same Kids array.
