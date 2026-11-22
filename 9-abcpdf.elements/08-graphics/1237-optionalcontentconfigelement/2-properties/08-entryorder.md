# EntryOrder Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Order" entry of the optional content configuration dictionary object. |

## Notes

Represents the "Order" entry of the optional content configuration dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 101, page 230.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=238)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 99, page 282.](https://www.iso.org/standard/63534.html)

The Order array defines the hierarchy and sequence in which groups are presented in the viewer's layer panel. It may contain group references and nested arrays representing sub-panels. This structure is purely cosmetic and does not affect rendering.
