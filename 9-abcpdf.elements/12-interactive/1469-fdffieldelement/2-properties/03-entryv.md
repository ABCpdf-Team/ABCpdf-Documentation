# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "V" entry of the fdf field dictionary object. |

## Notes

Represents the "V" entry of the fdf field dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of five different types:.

1\) A string representing a PDF name object.

2\) An array which contains strings, representing PDF string objects.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

3\) A Null.

4\) A [SignatureElement](../../1475-signatureelement/index.md).

5\) A [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 246, page 461.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=469)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 249, page 559.](https://www.iso.org/standard/63534.html)

The value is imported directly into the target field's V entry. Its type must be compatible with the target field type.
