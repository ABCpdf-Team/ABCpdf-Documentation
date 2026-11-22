# EntryIV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "IV" entry of the 3d cross section dictionary object. |

## Notes

Represents the "IV" entry of the 3d cross section dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 311, page 532.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=540)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 322, page 665.](https://www.iso.org/standard/63534.html)

The IV entry, when true, renders the lines where the cutting plane intersects the model surfaces. These intersection lines help visualise the model internal geometry.
