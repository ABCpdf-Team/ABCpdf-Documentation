# EntryTransferFunction Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "TransferFunction" entry of the type 6 halftone dictionary object. |

## Notes

Represents the "TransferFunction" entry of the type 6 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF name object.

If provided, this item must always take the value "Identity".

2\) A [FunctionElement](../../../07-syntax/1101-functionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 131, page 311.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=319)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 129, page 373.](https://www.iso.org/standard/63534.html)

The Identity name leaves tint values unchanged before the threshold comparison. A function object maps each input tint in the range 0 to 1 to a corrected output in the same range; the corrected value is what gets compared against the table entry.

The correction accounts for physical print characteristics such as dot gain. The same mechanism is used across all halftone types that support TransferFunction.
