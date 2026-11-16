# InsertKid Function

## Syntax

[C#]

```csharp
<a href="../default.htm">StructureElementElement</a> InsertKid(int index, string type)void InsertKid(int index, <a href="../../../../6-abcpdf.objects/1-indirectobject/default.htm">IndirectObject</a> obj, <a href="../../../../6-abcpdf.objects/page/default.htm">Page</a> page)<a href="../default.htm">StructureElementElement</a> InsertKid(int index, <a href="../default.htm">StructureElementElement</a> kid)
```

## Params

| **Name** | **Description** |
| --- | --- |
| index | The zero based index at which position the child should be inserted.. |
| type | The structure type, such as "P" (paragraph) or "TOC" (table of contents). |
| obj | An object which is a structure element in its own right. |
| page | The page on which that object appears. |
| kid | The structure element which will become the child. |
| return | The child element that was added. The overload that takes an IndirectObject and a Page returns void. |

## Notes

Inserts a child [StructureElementElement](default.md) in a particular location under this one.

If the provided child is already a part of an existing hierarchy it will be detached from that hierarchy and slotted into this one.

## Example

None
