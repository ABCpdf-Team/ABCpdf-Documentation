# EntryHeaders Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Headers" entry of the standard structure attributes object. |

## Notes

Represents the "Headers" entry of the standard structure attributes object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 593.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=601)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 347, page 608.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=616)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 382, page 784.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 348, page 609.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=617)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 383, page 785.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 349, page 610.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=618)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 384, page 785.](https://www.iso.org/standard/63534.html)

The Headers entry holds an array of element identifiers referencing the TH header cells that apply to this TD data cell. Explicit header associations provide more reliable accessibility than positional heuristics.
