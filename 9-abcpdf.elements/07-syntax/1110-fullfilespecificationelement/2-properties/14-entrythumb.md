# EntryThumb Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ImageXObjectElement`](../../../08-graphics/1214-imagexobjectelement/index.md) | null | No | Represents the "Thumb" entry of the full file specification dictionary object. |

## Notes

Represents the "Thumb" entry of the full file specification dictionary object.

It is an optional entry defined as part of the PDF 1.7 Extension Level 3 specification.

It contains an [ImageXObjectElement](../../../08-graphics/1214-imagexobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 44, page 102.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=110)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.41, page 26.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=26)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 43, page 134.](https://www.iso.org/standard/63534.html)

The Thumb entry references an image XObject providing a thumbnail preview of the attached file's content. Viewers may display this thumbnail in the attachments panel.
