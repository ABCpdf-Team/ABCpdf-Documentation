# EntryMatrix Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MatrixElement`](../../../07-syntax/0016-matrixelement/index.md) | null | No | Represents the "Matrix" entry of the fixed print dictionary object. |

## Notes

Represents the "Matrix" entry of the fixed print dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [MatrixElement](../../../07-syntax/0016-matrixelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 191, page 411.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=419)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 194, page 498.](https://www.iso.org/standard/63534.html)

The matrix is a six-element affine transformation array. It is applied to the watermark content to position it relative to the page corner defined by the H and V fractions.
