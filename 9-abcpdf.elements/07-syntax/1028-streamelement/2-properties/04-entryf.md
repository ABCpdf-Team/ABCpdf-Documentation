# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FileSpecificationElement`](../../0011-filespecificationelement/index.md) | null | No | Represents the "F" entry of the stream object. |

## Notes

Represents the "F" entry of the stream object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains a [FileSpecificationElement](../../0011-filespecificationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 5, page 20.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 5, page 32.](https://www.iso.org/standard/63534.html)

The F entry holds a file specification for a stream whose data resides in an external file rather than inline in the PDF. When present, the stream data in the PDF body is absent or empty and the actual data is read from the referenced file.
