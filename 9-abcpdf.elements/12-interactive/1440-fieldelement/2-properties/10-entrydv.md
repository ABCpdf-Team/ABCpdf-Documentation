# EntryDV Property

## Notes

Represents the "DV" entry of the field dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of five different types:.

1) A string representing a PDF name object.

2) An array which contains strings, representing PDF string objects.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

3) A Null.

4) A SignatureElement.

5) A StreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 220, page 433.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 226, page 527.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 222, page 434.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 228, page 529.

The default value has the same type as V and is used when a reset-form action is applied. If absent the reset value is the empty string for text fields, Off for button fields, and no selection for choice fields.
