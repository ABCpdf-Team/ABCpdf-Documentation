# EntryRF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RelatedFileSetElement`](../../1111-relatedfilesetelement/index.md) | null | No | Represents the "RF" entry of the full file specification dictionary object. |

## Notes

Represents the "RF" entry of the full file specification dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a [RelatedFileSetElement](../../1111-relatedfilesetelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 44, page 103.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=111)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.41, page 26.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=26)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 43, page 134.](https://www.iso.org/standard/63534.html)

The RF entry holds a related files set dictionary mapping path keys to arrays of related file path strings. Related files accompany the main referenced file but are not embedded in the PDF.
