# EntryDifferences Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`StreamElement`](../../../07-syntax/1028-streamelement/index.md) | null | No | Represents the "Differences" entry of the fdf dictionary object. |

## Notes

Represents the "Differences" entry of the fdf dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 460.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=468)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 557.](https://www.iso.org/standard/63534.html)

The differences entry carries the cross-reference and resource information needed to apply incremental updates from the FDF to the target document.
