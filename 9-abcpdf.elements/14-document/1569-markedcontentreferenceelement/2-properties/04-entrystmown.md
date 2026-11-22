# EntryStmOwn Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "StmOwn" entry of the marked-content reference dictionary object. |

## Notes

Represents the "StmOwn" entry of the marked-content reference dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

The specification defines this property as being of any type. So any type of atom or data content is valid.

It contains an [Element](../../../01-base/1086-element/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 324, page 561.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=569)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 357, page 727.](https://www.iso.org/standard/63534.html)

The StmOwn entry references the PDF object owning the stream given by Stm. It is used when the owner identity is needed for parent tree lookup and the stream is referenced indirectly.
