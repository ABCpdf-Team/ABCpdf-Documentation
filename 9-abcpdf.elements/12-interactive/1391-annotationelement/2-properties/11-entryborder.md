# EntryBorder Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Border" entry of the annotation dictionary object. |

## Notes

Represents the "Border" entry of the annotation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 164, page 384.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=392)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 166, page 465.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 467.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=475)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 565.](https://www.iso.org/standard/63534.html)

The border array is a legacy specification: \[horizontal-radius, vertical-radius, width\] with an optional fourth element for a dash array. It is superseded by the BS and BE entries in annotation subtypes that support them.
