# EntryKids Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`NameTreeNodeElement`](../index.md)`<T>>` | null | No | This property represents the "Kids" entry of the name tree node dictionary object. |

## Notes

This property represents the "Kids" entry of the name tree node dictionary object.

It is defined as part of the PDF 1.0 specification.

An Array containing child [NameTreeNodeElements](../index.md) which may be intermediate or leaf nodes.

This entry is always null in leaf nodes. In intermediate nodes it must always be non-null.

In the root node either this entry or the [EntryNames](02-entrynames.md) entry should be non-null. But not both.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 36, page 89.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=97)

The Kids array in an intermediate name tree node holds indirect references to child nodes. Each child may itself be an intermediate or leaf node. The tree depth is not fixed and may vary to balance the tree as entries are added.
