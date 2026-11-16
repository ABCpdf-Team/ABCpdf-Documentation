# AddStructParents Function

Add a new StructParents to the tree.

## Syntax

[C#]

```csharp
int AddStructParents(IndirectObject parent, ArrayAtom target, bool commit = true)
```

## Params

| **Name** | **Description** |
| --- | --- |
| parent | The parent object to be added. |
| target | An array which indexes from each MCID to the structure item which contains it. |
| commit | Whether to commit changes to the document. |
| return | The logical structure key for this object. |

## Notes

Add a new StructParents to the tree.

Items are held in a cache and are not pushed through to the document until committed.
