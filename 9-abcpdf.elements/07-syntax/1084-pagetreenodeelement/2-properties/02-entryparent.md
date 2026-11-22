# EntryParent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`PageTreeNodeElement`](../index.md) | null | No | Represents the "Parent" entry of the page tree node object. |

## Notes

Represents the "Parent" entry of the page tree node object.

It is defined as part of the PDF 1.0 specification.

It contains a [PageTreeNodeElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 29, page 76.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=84)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 30, page 102.](https://www.iso.org/standard/63534.html)

The Parent entry references the parent page tree node of this node. Every node except the root must have a Parent entry. The root node's Parent entry is absent.

Readers use the Parent chain to traverse upward from a page or node to find inherited attributes such as Resources, MediaBox, and Rotate.
