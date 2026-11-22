# EntryO Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "O" entry of the render mode dictionary object. |

## Notes

Represents the "O" entry of the render mode dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0.5 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 307, page 528.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=536)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 318, page 660.](https://www.iso.org/standard/63534.html)

The O entry holds the opacity value as a real number from 0.0 (fully transparent) to 1.0 (fully opaque), applied to the model surfaces in render modes that support transparency.
