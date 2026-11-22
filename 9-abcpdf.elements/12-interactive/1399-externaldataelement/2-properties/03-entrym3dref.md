# EntryM3DREF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`D3DMeasurementElement`](../../../13-multimedia/2062-d3dmeasurementelement/index.md) | null | No | Represents the "M3DREF" entry of the external data dictionary object. |

## Notes

Represents the "M3DREF" entry of the external data dictionary object.

It is a required entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains a [D3DMeasurementElement](../../../13-multimedia/2062-d3dmeasurementelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 170, page 391.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=399)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.21, page 38.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=38)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 332, page 695.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 173, page 477.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.39g, page 76.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=76)

This entry holds an indirect reference to the 3D stream object. The stream carries the 3D geometry, materials, and animation data in a supported format such as U3D or PRC.
