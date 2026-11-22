# EntryPrev Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`OutlineItemElement`](../index.md) | null | No | Represents the "Prev" entry of the outline item dictionary object. |

## Notes

Represents the "Prev" entry of the outline item dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an [OutlineItemElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 153, page 368.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=376)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 151, page 442.](https://www.iso.org/standard/63534.html)

This entry links the item to its preceding sibling at the same outline level. If absent the item is the first child of its parent.
