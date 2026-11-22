# Entry3DA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "3DA" entry of the external data dictionary used to markup 3d annotations object. |

## Notes

Represents the "3DA" entry of the external data dictionary used to markup 3d annotations object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

2\) A [D3DAnnotationElement](../../1520-d3dannotationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 313, page 543.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=551)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 324, page 676.](https://www.iso.org/standard/63534.html)

The 3DA entry holds an indirect reference to the 3D stream dictionary for this annotation. The stream contains the 3D model data and view definitions.
