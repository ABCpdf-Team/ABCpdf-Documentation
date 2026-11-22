# InsertKid Function

Inserts a child [StructureElementElement](../index.md) in a particular location under this one.

## Syntax

*C#*

[`StructureElementElement`](../index.md)` InsertKid(int index, string type)`  
`void InsertKid(int index, `[`IndirectObject`](../../../../6-abcpdf.objects/1-indirectobject/index.md)` obj, `[`Page`](../../../../6-abcpdf.objects/page/index.md)` page)`  
[`StructureElementElement`](../index.md)` InsertKid(int index, `[`StructureElementElement`](../index.md)` kid)`

## Params

| Name | Description |
| :---: | --- |
| index | The zero based index at which position the child should be inserted.. |
| type | The structure type, such as "P" (paragraph) or "TOC" (table of contents). |
| obj | An object which is a structure element in its own right. |
| page | The page on which that object appears. |
| kid | The structure element which will become the child. |
| return | The child element that was added. The overload that takes an IndirectObject and a Page returns void. |

## Notes

Inserts a child [StructureElementElement](../index.md) in a particular location under this one.

If the provided child is already a part of an existing hierarchy it will be detached from that hierarchy and slotted into this one.
