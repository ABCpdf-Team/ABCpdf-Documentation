# Conformance Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `PdfConformance` | Pdf | No | The PDF conformance. |

## Notes

This property specifies the conformance for validation.

The PdfValidationOperation supports the following [PdfConformance](../../7-pdfconformanceidentification/2-properties/effectiveconformance.md) values:

- Pdf - PDF conformance.
- PdfA1b - PDF/A Part 1 Level B conformance.
- PdfA1a - PDF/A Part 1 Level A conformance.
- PdfA2b - PDF/A Part 2 Level B conformance.
- PdfA2u - PDF/A Part 2 Level U conformance.
- PdfA2a - PDF/A Part 2 Level A conformance.
- PdfA3b - PDF/A Part 3 Level B conformance.
- PdfA3u - PDF/A Part 3 Level U conformance.
- PdfA3a - PDF/A Part 3 Level A conformance.

In general you will be wanting to validate against PdfA1b, PdfA2b or PdfA3b - PdfA3b is the parent standard of PdfA3u and PdfA3a.

ABCpdf cannot validate against PdfA2a or PdfA3a because the standard includes features which can only be determined by humans. For example it requires that images of text be tagged with the text that is displayed in the image.

## Example

See the [Read](../1-methods/read.md) method.

Also see example code in: [PdfValidationOperation Read Function](../1-methods/read.md).
