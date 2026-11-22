# EntryColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`ColorSpaceElement`](../../../08-graphics/0020-colorspaceelement/index.md)`>` | null | No | Represents the "ColorSpace" entry of the separation dictionary object. |

## Notes

Represents the "ColorSpace" entry of the separation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [ColorSpaceElements](../../../08-graphics/0020-colorspaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 364, page 633.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=641)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 400, page 813.](https://www.iso.org/standard/63534.html)

The ColorSpace entry holds a color space array mapping the separation tint values to a device-independent color, supporting on-screen proofing of the separation.
