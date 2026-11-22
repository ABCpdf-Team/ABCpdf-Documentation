# EntryData Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Data" entry of the 3d node dictionary object. |

## Notes

Represents the "Data" entry of the 3d node dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

2\) A [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 312, page 538.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=546)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 323, page 671.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 9.47, page 58.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=66)

The Data entry references a 3D stream providing replacement geometry for this node. When present, the viewer substitutes this geometry for the node geometry defined in the main 3D stream.
