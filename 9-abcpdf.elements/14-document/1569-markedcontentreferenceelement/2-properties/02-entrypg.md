# EntryPg Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PageObjectElement`](../../../07-syntax/1085-pageobjectelement/index.md) | null | No | Represents the "Pg" entry of the marked-content reference dictionary object. |

## Notes

Represents the "Pg" entry of the marked-content reference dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [PageObjectElement](../../../07-syntax/1085-pageobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 324, page 561.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=569)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 357, page 727.](https://www.iso.org/standard/63534.html)

The Pg entry references the page containing the marked content sequence. When absent, the page is inherited from the nearest ancestor structure element that specifies one.
