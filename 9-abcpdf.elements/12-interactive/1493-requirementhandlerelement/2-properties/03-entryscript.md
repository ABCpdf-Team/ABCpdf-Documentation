# EntryScript Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Script" entry of the requirement handler dictionary object. |

## Notes

Represents the "Script" entry of the requirement handler dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 265, page 485.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=493)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 276, page 608.](https://www.iso.org/standard/63534.html)

The script string is evaluated by the viewer's JavaScript engine to check or satisfy the requirement. It should return true if the requirement is met.
