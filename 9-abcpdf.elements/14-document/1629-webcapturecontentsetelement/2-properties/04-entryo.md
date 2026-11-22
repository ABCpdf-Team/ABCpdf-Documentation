# EntryO Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "O" entry of the web capture content set object. |

## Notes

Represents the "O" entry of the web capture content set object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 352, page 622.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=630)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 388, page 801.](https://www.iso.org/standard/63534.html)

The O entry holds an array of indirect references to the captured page or image objects, in the order they were captured.
