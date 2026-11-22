# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`UserPropertyElement`](../../1577-userpropertyelement/index.md)`>` | null | No | Represents the "P" entry of the user properties attributes object. |

## Notes

Represents the "P" entry of the user properties attributes object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [UserPropertyElements](../../1577-userpropertyelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 328, page 569.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=577)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 361, page 736.](https://www.iso.org/standard/63534.html)

The P entry holds an array of user property dictionaries, one for each custom property of the structure element. Each defines a single named property with its value, display string, and visibility flag.
