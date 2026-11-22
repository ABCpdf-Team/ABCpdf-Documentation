# EntryShading Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`ShadingElement`](../../../08-graphics/1191-shadingelement/index.md)`>` | null | No | Represents the "Shading" entry of the resource dictionary object. |

## Notes

Represents the "Shading" entry of the resource dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 33, page 83.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=91)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 34, page 112.](https://www.iso.org/standard/63534.html)

The Shading entry maps resource names to shading dictionaries. A content stream paints a named shading using the sh operator, which fills the current clipping region with the shading's color gradient.
