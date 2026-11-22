# EntryVersion Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Version" entry of the trap network annotation object. |

## Notes

Represents the "Version" entry of the trap network annotation object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 366, page 637.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=645)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 403, page 821.](https://www.iso.org/standard/63534.html)

The Version entry holds an array of objects identifying the trap network version. Its content is defined by the trapping application and is used to detect version changes requiring regeneration.
