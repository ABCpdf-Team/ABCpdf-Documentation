# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "P" entry of the page label dictionary object. |

## Notes

Represents the "P" entry of the page label dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 159, page 375.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=383)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 161, page 456.](https://www.iso.org/standard/63534.html)

The prefix is prepended to every label in the range. Combined with an absent S entry a prefix alone can label pages with fixed identifiers such as 'Cover' or 'Inside Front'.
