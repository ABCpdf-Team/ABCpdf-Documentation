# EntryTransferFunction Property

## Notes

Represents the "TransferFunction" entry of the type 16 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) A string representing a PDF name object.

If provided, this item must always take the value "Identity".

2) A FunctionElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 133, page 314.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 131, page 377.

Identity leaves tint values unchanged before the 16-bit threshold comparison. A function object maps each input level to a corrected output; the corrected value is compared against the two-byte table entries.

The higher sample resolution of a 16-bit table means the transfer function can apply finer corrections than an 8-bit table allows, which is useful in high-bit-depth workflows where subtle tone shifts are visible.
