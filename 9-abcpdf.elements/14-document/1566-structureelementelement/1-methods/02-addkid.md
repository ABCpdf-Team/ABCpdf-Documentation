# AddKid Function

Adds a child [StructureElementElement](../index.md) to this one.

## Syntax

*C#*

[`StructureElementElement`](../index.md)` AddKid(string type)`  
`void AddKid(`[`IndirectObject`](../../../../6-abcpdf.objects/1-indirectobject/index.md)` obj, `[`Page`](../../../../6-abcpdf.objects/page/index.md)` page)`  
[`StructureElementElement`](../index.md)` AddKid(`[`StructureElementElement`](../index.md)` kid)`

## Params

| Name | Description |
| :---: | --- |
| type | The structure type, such as "P" (paragraph) or "TOC" (table of contents). |
| obj | An object which is a structure element in its own right. |
| page | The page on which that object appears. |
| kid | The structure element which will become the child. |
| return | The child element that was added. The overload that takes an IndirectObject and a Page returns void. |

## Notes

Adds a child [StructureElementElement](../index.md) to this one.

If the provided child is already a part of an existing hierarchy it will be detached from that hierarchy and slotted into this one.
