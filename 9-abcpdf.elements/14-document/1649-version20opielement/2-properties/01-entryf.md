# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md) | null | No | Represents the "F" entry of the version 2. |

## Notes

Represents the "F" entry of the version 2.0 opi dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [FileSpecificationElement](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 641.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=649)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 825.](https://www.iso.org/standard/63534.html)

The F entry holds the file specification of the high-resolution image original, which may be a full dictionary with platform-specific paths and embedded file references.
