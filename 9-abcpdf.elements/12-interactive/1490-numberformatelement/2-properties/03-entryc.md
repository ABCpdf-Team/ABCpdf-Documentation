# EntryC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "C" entry of the number format dictionary object. |

## Notes

Represents the "C" entry of the number format dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 263, page 482.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=490)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 268, page 595.](https://www.iso.org/standard/63534.html)

The conversion factor scales the base unit to the unit represented by U. For example, if the base unit is a metre and U is 'ft', C would be approximately 3.281.
