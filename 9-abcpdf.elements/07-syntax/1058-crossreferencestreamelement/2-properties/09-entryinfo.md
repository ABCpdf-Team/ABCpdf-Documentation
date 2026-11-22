# EntryInfo Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`DocumentInformationElement`](../../../14-document/1558-documentinformationelement/index.md) | null | No | Represents the "Info" entry of the cross-reference stream dictionary object. |

## Notes

Represents the "Info" entry of the cross-reference stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [DocumentInformationElement](../../../14-document/1558-documentinformationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 17, page 50.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=58)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 17, page 65.](https://www.iso.org/standard/63534.html)

The Info entry in the cross-reference stream references the document information dictionary, serving the same role as Info in the traditional trailer.
