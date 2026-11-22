# EntryKids Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`NumberTreeNodeElement`](../index.md)`<T>>` | null | No | This property represents the "Kids" entry of the number tree node dictionary object. |

## Notes

This property represents the "Kids" entry of the number tree node dictionary object.

It is defined as part of the PDF 1.0 specification.

An Array containing child [NumberTreeNodeElements](../index.md) which may be intermediate or leaf nodes.

This entry is always null in leaf nodes. In intermediate nodes it must always be non-null.

In the root node either this entry or the [EntryNums](02-entrynums.md) entry should be non-null. But not both.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 37, page 91.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=99)

The Kids array in an intermediate number tree node holds indirect references to child nodes. The tree structure mirrors that of name trees, with intermediate nodes holding Kids and Limits, and leaf nodes holding Nums.
