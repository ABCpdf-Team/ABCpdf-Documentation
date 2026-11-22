# EntryPS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "PS" entry of the number format dictionary object. |

## Notes

Represents the "PS" entry of the number format dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

The PDF specification states that this item assumes a value of "A single ASCII SPACE character (20h)" if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 263, page 483.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=491)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 268, page 596.](https://www.iso.org/standard/63534.html)

The prefix string appears immediately before the numeric value, for example to show a currency symbol or a directional indicator such as N or E for geographic coordinates.
