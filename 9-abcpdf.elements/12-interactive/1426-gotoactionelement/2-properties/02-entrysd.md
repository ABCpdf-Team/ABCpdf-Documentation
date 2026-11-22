# EntrySD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DestinationElement`](../../../07-syntax/1374-destinationelement/index.md) | null | No | Represents the "SD" entry of the go-to action object. |

## Notes

Represents the "SD" entry of the go-to action object.

It is an optional entry defined as part of the PDF 2.0 specification.

It contains a [DestinationElement](../../../07-syntax/1374-destinationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 199, page 418.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=426)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 202, page 508.](https://www.iso.org/standard/63534.html)

The SD entry is a string-keyed named destination, added to support arbitrary Unicode destination names in the string-keyed name tree alongside the byte-string-keyed tree addressed by D.
