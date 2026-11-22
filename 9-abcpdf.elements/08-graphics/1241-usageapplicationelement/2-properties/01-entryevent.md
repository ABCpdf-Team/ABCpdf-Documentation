# EntryEvent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Event" entry of the usage application dictionary object. |

## Notes

Represents the "Event" entry of the usage application dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- View
- Print
- Export

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 103, page 233.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=241)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 101, page 286.](https://www.iso.org/standard/63534.html)

The Event name identifies the trigger for automatic state setting. Defined values are View (opening or navigating in a viewer), Print (initiating a print operation), and Export (converting the document to another format).
