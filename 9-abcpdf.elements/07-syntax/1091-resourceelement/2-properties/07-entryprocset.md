# EntryProcSet Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "ProcSet" entry of the resource dictionary object. |

## Notes

Represents the "ProcSet" entry of the resource dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification. It was deprecated in PDF 2.0.

It contains an array which contains strings, representing PDF name objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 33, page 83.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=91)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 34, page 112.](https://www.iso.org/standard/63534.html)

The ProcSet entry holds an array of procedure set names for compatibility with PDF 1.0 and 1.1. Values include PDF, Text, ImageB, ImageC, and ImageI. Conforming readers based on PDF 1.2 and later ignore this entry.
