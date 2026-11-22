# EntryColorType Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "ColorType" entry of the version 1. |

## Notes

Represents the "ColorType" entry of the version 1.3 opi dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Spot" if no value has been provided.

This item may take one of the following valid values:.

- Process
- Spot
- Separation

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 369, page 640.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=648)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 406, page 824.](https://www.iso.org/standard/63534.html)

The ColorType entry names the color mode of the high-resolution image, such as Process, Spot, or Separation, telling the OPI processor how to handle the image colorants at output.
