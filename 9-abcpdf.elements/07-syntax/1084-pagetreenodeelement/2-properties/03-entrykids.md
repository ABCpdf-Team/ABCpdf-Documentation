# EntryKids Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | Represents the "Kids" entry of the page tree node object. |

## Notes

Represents the "Kids" entry of the page tree node object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [PageTreeNodeElements](../index.md) or [PageObjectElements](../../1085-pageobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 29, page 76.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=84)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 30, page 102.](https://www.iso.org/standard/63534.html)

The Kids array lists the immediate children of this page tree node as indirect references. Children may be page objects or other page tree nodes. The order of Kids defines the page order of the document.
