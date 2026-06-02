# AddKid Function

## Syntax

[C#]

```csharp
<a href="../default.htm">StructureElementElement</a> AddKid(string type)<a href="../default.htm">StructureElementElement</a> AddKid(<a href="../../../../6-abcpdf.objects/1-indirectobject/default.htm">IndirectObject</a> obj, <a href="../../../../6-abcpdf.objects/page/default.htm">Page</a> page)<a href="../default.htm">StructureElementElement</a> AddKid(<a href="../default.htm">StructureElementElement</a> kid)
```

## Params

| **Name** | **Description** |
| --- | --- |
| type | The structure type, such as "P" (paragraph) or "TOC" (table of contents). |
| obj | An object which is a structure element in its own right. |
| page | The page on which that object appears. |
| kid | The structure element which will become the child. |
| returns | The newly created child element. |

## Notes

Adds a child [StructureElementElement](default.md) to this one.

If the provided child is already a part of an existing hierarchy it will be detached from that hierarchy and slotted into this one.

## Example

None
