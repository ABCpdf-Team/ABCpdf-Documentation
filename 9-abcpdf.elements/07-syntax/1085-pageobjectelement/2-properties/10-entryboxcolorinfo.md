# EntryBoxColorInfo Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`BoxColorInformationElement`](../../../14-document/1638-boxcolorinformationelement/index.md) | null | No | Represents the "BoxColorInfo" entry of the page object object. |

## Notes

Represents the "BoxColorInfo" entry of the page object object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a [BoxColorInformationElement](../../../14-document/1638-boxcolorinformationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 77.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=85)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 104.](https://www.iso.org/standard/63534.html)

The BoxColorInfo entry references a dictionary that specifies the colors and visual style used when drawing the page's box boundaries in a page editing application. This is presentational metadata with no effect on printing.
