# EntryI Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "I" entry of the border effect dictionary object. |

## Notes

Represents the "I" entry of the border effect dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 2.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 167, page 387.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=395)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 169, page 470.](https://www.iso.org/standard/63534.html)

The intensity is a number between 0 and 2. Higher values produce larger, more pronounced cloud arcs. A value of zero effectively disables the cloud effect even when S is set to C.
