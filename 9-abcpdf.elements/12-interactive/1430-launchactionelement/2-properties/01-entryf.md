# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FileSpecificationElement`](../../../07-syntax/0011-filespecificationelement/index.md) | null | No | Represents the "F" entry of the launch action object. |

## Notes

Represents the "F" entry of the launch action object.

It is defined as part of the PDF 1.0 specification.

It contains a [FileSpecificationElement](../../../07-syntax/0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 203, page 422.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=430)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 207, page 513.](https://www.iso.org/standard/63534.html)

The file specification gives the file to launch on all platforms. For platform-specific launch parameters the Win, Mac, or Unix entries take precedence on their respective platforms.
