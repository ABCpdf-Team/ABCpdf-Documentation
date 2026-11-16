# AddStructParent Function

Add a new StructParent to the tree.

## Syntax

[C#]

```csharp
int AddStructParent(IndirectObject parent, IndirectObject target, bool commit = true)
```

## Params

| **Name** | **Description** |
| --- | --- |
| parent | The parent object to be added. |
| target | The structure item which contains the parent. |
| commit | Whether to commit changes to the document. |
| return | The logical structure key for this object. |

## Notes

Add a new StructParent to the tree.

Items are held in a cache and are not pushed through to the document until committed.
