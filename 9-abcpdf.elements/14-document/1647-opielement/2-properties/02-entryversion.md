# EntryVersion Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "Version" entry of the opi dictionary object. |

## Notes

Represents the "Version" entry of the opi dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 369, page 639.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=647)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 406, page 823.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 641.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=649)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 825.](https://www.iso.org/standard/63534.html)

The Version entry holds a dictionary with 1.3 and 2.0 entries, each referencing the corresponding OPI version dictionary. An OPI processor uses whichever version it supports, preferring 2.0.
