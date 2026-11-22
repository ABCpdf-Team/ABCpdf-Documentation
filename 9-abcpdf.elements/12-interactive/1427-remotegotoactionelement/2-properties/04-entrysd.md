# EntrySD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DestinationElement`](../../../07-syntax/1374-destinationelement/index.md) | null | No | Represents the "SD" entry of the remote go-to action object. |

## Notes

Represents the "SD" entry of the remote go-to action object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a [DestinationElement](../../../07-syntax/1374-destinationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 200, page 419.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=427)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 203, page 509.](https://www.iso.org/standard/63534.html)

The SD entry provides a string-keyed named destination in the external file, complementing the D entry for documents using the newer string-keyed name tree.
