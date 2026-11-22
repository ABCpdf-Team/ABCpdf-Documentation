# EntryLastChar Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "LastChar" entry of the type 3 font dictionary object. |

## Notes

Represents the "LastChar" entry of the type 3 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=267)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 315.](https://www.iso.org/standard/63534.html)

This is the character code of the last entry in the Widths array. The array must contain exactly LastChar minus FirstChar plus one elements.
