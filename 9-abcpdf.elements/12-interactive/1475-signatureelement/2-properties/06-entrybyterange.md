# EntryByteRange Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "ByteRange" entry of the signature dictionary object. |

## Notes

Represents the "ByteRange" entry of the signature dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 468.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=476)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 566.](https://www.iso.org/standard/63534.html)

The array contains pairs of integers giving byte offsets and lengths: the first pair covers the document from the start up to the Contents value, and the second covers the remainder after it.
