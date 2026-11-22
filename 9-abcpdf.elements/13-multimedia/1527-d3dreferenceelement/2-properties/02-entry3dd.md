# Entry3DD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`D3DStreamElement`](../../1524-d3dstreamelement/index.md) | null | No | Represents the "3DD" entry of the 3d reference dictionary object. |

## Notes

Represents the "3DD" entry of the 3d reference dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [D3DStreamElement](../../1524-d3dstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 303, page 519.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=527)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 314, page 648.](https://www.iso.org/standard/63534.html)

The 3DD entry holds an indirect reference to the 3D stream dictionary containing the model data. This reference links the external data dictionary to the actual 3D content.
