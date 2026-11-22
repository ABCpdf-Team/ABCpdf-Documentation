# EntryPO Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "PO" entry of the 3d cross section dictionary object. |

## Notes

Represents the "PO" entry of the 3d cross section dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 1.

The PDF specification states that this item assumes a value of 0.5 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 311, page 532.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=540)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 322, page 665.](https://www.iso.org/standard/63534.html)

The PO entry holds the cutting plane opacity as a real number from 0.0 to 1.0. A lower opacity allows the model interior to be seen through the cutting plane surface.
