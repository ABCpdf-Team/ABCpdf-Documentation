# EntryEnd Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PageObjectElement`](../../../07-syntax/1085-pageobjectelement/index.md) | null | No | Represents the "End" entry of the dpart dictionary object. |

## Notes

Represents the "End" entry of the dpart dictionary object.

It is defined as part of the PDF 2.0 specification.

It contains a [PageObjectElement](../../../07-syntax/1085-pageobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 409, page 830.](https://www.iso.org/standard/63534.html)

The End entry references the last page object of the page range. A processor collecting the pages of a part reads from Start through End inclusive.
