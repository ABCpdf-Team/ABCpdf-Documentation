# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "V" entry of the field dictionary object. |

## Notes

Represents the "V" entry of the field dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of five different types:.

1\) A string representing a PDF name object.

2\) An array which contains strings, representing PDF string objects.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

3\) A Null.

4\) A [SignatureElement](../../1475-signatureelement/index.md).

5\) A [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 220, page 433.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=441)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 226, page 527.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 222, page 434.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=442)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 228, page 529.](https://www.iso.org/standard/63534.html)

The value type varies by field type: a text string for text fields, a PDF name matching an on-state for button fields, and a name or text string matching an option for choice fields.
