# EntryShading Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ShadingElement`](../../1191-shadingelement/index.md) | null | No | Represents the "Shading" entry of the type 2 pattern dictionary object. |

## Notes

Represents the "Shading" entry of the type 2 pattern dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [ShadingElement](../../1191-shadingelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 76, page 181.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=189)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 75, page 225.](https://www.iso.org/standard/63534.html)

The Shading entry references a shading dictionary or stream that defines the color gradient to be painted. The shading type, color space, and function together determine how color varies across the painted area.
