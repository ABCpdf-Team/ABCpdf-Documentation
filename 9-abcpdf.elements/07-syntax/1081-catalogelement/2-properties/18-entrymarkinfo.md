# EntryMarkInfo Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`MarkInformationElement`](../../../14-document/1564-markinformationelement/index.md) | null | No | Represents the "MarkInfo" entry of the catalog dictionary object. |

## Notes

Represents the "MarkInfo" entry of the catalog dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a [MarkInformationElement](../../../14-document/1564-markinformationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 74.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=82)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 100.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

The MarkInfo entry references a dictionary indicating whether the document is tagged and whether it contains marked content. These flags affect how assistive technologies and reflow engines process the document.
