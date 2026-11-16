# Conformance Property

| **Type** | **Default** | **Read Only** | **Description** |
| --- | --- | --- | --- |
|  | Pdf | No | The PDF conformance to be applied. |

## Notes

This property specifies the conformance of the output PDF.

The PdfConformityOperation supports the following [PdfConformance](7-pdfconformanceidentification/2-properties/effectiveconformance.md) values:

* Pdf - PDF conformance.
* PdfA1b - PDF/A Part 1 Level B conformance.
* PdfA1a - PDF/A Part 1 Level A conformance.
* PdfA2b - PDF/A Part 2 Level B conformance.
* PdfA2u - PDF/A Part 2 Level U conformance.
* PdfA2a - PDF/A Part 2 Level A conformance.

The [PdfConformanceIdentification](7-pdfconformanceidentification/default.md) supports standards like PDF/A-3 and PDF/A-4, however these are not currently supported by the PdfConformityOperation.

## Example

Also see example code in: [PdfConformityOperation Save Function](1-methods/save.md).
