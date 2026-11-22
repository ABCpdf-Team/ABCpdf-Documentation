# Entry3DD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "3DD" entry of the 3d annotation object. |

## Notes

Represents the "3DD" entry of the 3d annotation object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A [D3DReferenceElement](../../1527-d3dreferenceelement/index.md).

2\) A [D3DStreamElement](../../1524-d3dstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 298, page 512.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=520)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.33, page 55.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=55)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 309, page 639.](https://www.iso.org/standard/63534.html)

The 3DD entry references the 3D stream containing the model data in a format such as U3D or PRC. The subtype of the stream identifies the format.
