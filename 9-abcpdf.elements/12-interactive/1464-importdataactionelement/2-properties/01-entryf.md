# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md) | null | No | Represents the "F" entry of the import-data action object. |

## Notes

Represents the "F" entry of the import-data action object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [FileSpecificationElement](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 240, page 456.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=464)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 243, page 552.](https://www.iso.org/standard/63534.html)

The file specification identifies the FDF file to import from. It may be a local path or a URL. The FDF file's Fields array provides the values to import into matching fields.
