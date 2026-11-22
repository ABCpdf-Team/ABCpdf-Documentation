# EntryTransferFunction Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "TransferFunction" entry of the type 10 halftone dictionary object. |

## Notes

Represents the "TransferFunction" entry of the type 10 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

If provided, this item must always take the value "Identity".

2\) A [FunctionElement](../../../07-syntax/1101-functionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 132, page 313.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=321)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 130, page 375.](https://www.iso.org/standard/63534.html)

Identity passes tint values through to the threshold comparison unchanged. A function object adjusts each input level before the comparison, allowing correction for dot gain or other press characteristics.

The behaviour is the same as TransferFunction in type 6 and type 16. All threshold-based halftone types handle this entry in the same way.
