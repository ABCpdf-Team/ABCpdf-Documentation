# EntryAC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "AC" entry of the render mode dictionary object. |

## Notes

Represents the "AC" entry of the render mode dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [Elements](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 307, page 528.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=536)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 318, page 660.](https://www.iso.org/standard/63534.html)

The AC entry names the auxiliary colour applied to supplementary geometry in certain render modes, such as edge lines, vertex points, or backfaces that are revealed by the current render mode.
