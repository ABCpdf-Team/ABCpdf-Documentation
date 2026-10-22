# EntryTransferFunction Property

## Notes

Represents the "TransferFunction" entry of the type 10 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A string representing a PDF name object.

If provided, this item must always take the value "Identity".

2) A FunctionElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 132, page 313.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 130, page 375.

Identity passes tint values through to the threshold comparison unchanged. A function object adjusts each input level before the comparison, allowing correction for dot gain or other press characteristics.

The behaviour is the same as TransferFunction in type 6 and type 16. All threshold-based halftone types handle this entry in the same way.
