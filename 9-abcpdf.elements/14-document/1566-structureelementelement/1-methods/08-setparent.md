# SetParent Function

Sets the parent of this structure element.

## Syntax

[C#]

```csharp
void SetParent(StructureElementElement parent)void SetParent(StructureElementElement parent, int index)
```

## Params

| **Name** | **Description** |
| --- | --- |
| parent | The parent which will adopt this structure element. |
| index | The index at which the element should be inserted in the child array. |

## Notes

Sets the parent of this structure element.

First this structure element is removed from any current parent.

Then this structure element is inserted into the child array of the new parent.

Optionally you can specify an index to determine the location in the child array.

If no index is provided then the location will be at the end of the child array.

## Example

None
