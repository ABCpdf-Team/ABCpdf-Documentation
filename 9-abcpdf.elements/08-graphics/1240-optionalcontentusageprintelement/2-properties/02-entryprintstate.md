# EntryPrintState Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "PrintState" entry of the optional content usage print dictionary object. |

## Notes

Represents the "PrintState" entry of the optional content usage print dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- ON
- OFF

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

PrintState holds ON or OFF to indicate the desired state of this optional content group during a print event. A conforming print processor that honours usage-based automatic state setting applies this value before rendering the print output.
