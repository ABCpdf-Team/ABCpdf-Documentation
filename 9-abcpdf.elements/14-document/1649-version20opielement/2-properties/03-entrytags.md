# EntryTags Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Tags" entry of the version 2. |

## Notes

Represents the "Tags" entry of the version 2.0 opi dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 642.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=650)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 826.](https://www.iso.org/standard/63534.html)

The Tags entry in OPI 2.0 holds an array of key-value pairs for application-specific metadata, serving the same purpose as in OPI 1.3.
