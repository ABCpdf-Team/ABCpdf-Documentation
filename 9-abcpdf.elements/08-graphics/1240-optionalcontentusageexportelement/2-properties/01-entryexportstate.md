# EntryExportState Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "ExportState" entry of the optional content usage export dictionary object. |

## Notes

Represents the "ExportState" entry of the optional content usage export dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "OFF" if no value has been provided.

This item may take one of the following valid values:.

- ON
- OFF

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 102, page 232.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=240)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 100, page 284.](https://www.iso.org/standard/63534.html)

The ExportState name specifies whether this group should be on (ON) or off (OFF) when the document's content is exported. A conforming export processor may use this value to include or exclude the group's content from the output.
