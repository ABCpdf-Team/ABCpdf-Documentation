# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PageObjectElement`](../../../07-syntax/1085-pageobjectelement/index.md) | null | No | Represents the "P" entry of the bead dictionary object. |

## Notes

Represents the "P" entry of the bead dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [PageObjectElement](../../../07-syntax/1085-pageobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 161, page 376.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=384)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 163, page 457.](https://www.iso.org/standard/63534.html)

The page entry references the page object on which this bead's rectangle is located. The page's B array must list this bead, maintaining the bidirectional page-to-bead relationship.
