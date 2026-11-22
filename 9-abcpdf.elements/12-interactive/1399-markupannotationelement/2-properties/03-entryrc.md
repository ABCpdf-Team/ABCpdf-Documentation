# EntryRC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "RC" entry of the markup annotation object. |

## Notes

Represents the "RC" entry of the markup annotation object.

It is an optional entry defined as part of the PDF 1.5 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

2\) A [TextStreamElement](../../../07-syntax/0018-textstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 170, page 392.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=400)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.21, page 38.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=38)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 332, page 695.](https://www.iso.org/standard/63534.html)

The rich content string is an XHTML fragment the viewer renders in place of the plain Contents text when the pop-up is displayed. Tags for paragraphs, spans, line breaks, and basic text formatting are supported.
