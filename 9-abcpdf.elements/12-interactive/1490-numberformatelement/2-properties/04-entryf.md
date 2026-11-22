# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "F" entry of the number format dictionary object. |

## Notes

Represents the "F" entry of the number format dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "D" if no value has been provided.

This item may take one of the following valid values:.

- D
- F
- R
- T

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 263, page 482.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=490)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 268, page 595.](https://www.iso.org/standard/63534.html)

The fraction display style selects how the numeric value is rendered: D (decimal), F (fraction with power-of-two denominator), or R (rounded to the nearest fraction). The default is D.
