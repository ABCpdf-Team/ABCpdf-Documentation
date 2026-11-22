# EntryTP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "TP" entry of the appearance characteristics dictionary object. |

## Notes

Represents the "TP" entry of the appearance characteristics dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 189, page 410.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=418)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 192, page 497.](https://www.iso.org/standard/63534.html)

The text position integer selects the relative layout of caption and icon: 0 caption only, 1 icon only, 2 caption below icon, 3 caption above icon, 4 caption right of icon, 5 caption left of icon, 6 caption overlaid on icon.
