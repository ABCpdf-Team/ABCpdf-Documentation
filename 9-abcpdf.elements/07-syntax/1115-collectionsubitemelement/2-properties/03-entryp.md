# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "P" entry of the collection subitem dictionary object. |

## Notes

Represents the "P" entry of the collection subitem dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 49, page 107.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=115)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 47, page 139.](https://www.iso.org/standard/63534.html)

The P entry, when present and false, indicates that the field data in D is not displayed for this item even though the entry is present. A value of true or the absence of P means the data is displayed normally.
