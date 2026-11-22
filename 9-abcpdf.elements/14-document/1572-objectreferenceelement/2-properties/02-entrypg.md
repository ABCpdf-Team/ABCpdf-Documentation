# EntryPg Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PageObjectElement`](../../../07-syntax/1085-pageobjectelement/index.md) | null | No | Represents the "Pg" entry of the object reference dictionary object. |

## Notes

Represents the "Pg" entry of the object reference dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [PageObjectElement](../../../07-syntax/1085-pageobjectelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 325, page 564.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=572)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 358, page 730.](https://www.iso.org/standard/63534.html)

The Pg entry references the page on which the referenced object appears. It is required when the object does not carry its own StructParent entry linking it to the structure tree.
