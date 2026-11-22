# Entry3DV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`D3DViewElement`](../../1529-d3dviewelement/index.md) | null | No | Represents the "3DV" entry of the external data dictionary used to markup 3d annotations object. |

## Notes

Represents the "3DV" entry of the external data dictionary used to markup 3d annotations object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [D3DViewElement](../../1529-d3dviewelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 313, page 543.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=551)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 324, page 676.](https://www.iso.org/standard/63534.html)

The 3DV entry identifies the default view for the externally referenced 3D data, using the same format as the 3DV entry in the 3D annotation dictionary.
