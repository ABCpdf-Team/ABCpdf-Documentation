# EntryPenalty Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Penalty" entry of the requirement dictionary object. |

## Notes

Represents the "Penalty" entry of the requirement dictionary object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 264, page 484.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=492)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 274, page 603.](https://www.iso.org/standard/63534.html)

The penalty integer indicates the severity of non-compliance: 0 (proceed silently), 1 (warn the user), or 2 (refuse to process the document).
