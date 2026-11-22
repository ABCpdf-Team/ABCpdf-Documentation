# EntryColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`ColorSpaceElement`](../../../08-graphics/0020-colorspaceelement/index.md)`>` | null | No | Represents the "ColorSpace" entry of the resource dictionary object. |

## Notes

Represents the "ColorSpace" entry of the resource dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 33, page 83.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=91)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 34, page 112.](https://www.iso.org/standard/63534.html)

The ColorSpace entry maps resource names to color space objects. A content stream selects a named color space using the CS or cs operators. Color spaces that require array notation must be referenced through this dictionary rather than used inline.
