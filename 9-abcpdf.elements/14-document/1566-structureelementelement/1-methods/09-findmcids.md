# FindMcids Function

Finds all the MCIDs referenced by this structure element and its children.

## Syntax

```csharp
void FindMcids(Dictionary<Page, HashSet<int>> mcids)
```

## Params

| Name | Description |
| :---: | --- |
| mcids | The structure to which MCIDs should be added. |

## Notes

Finds all the MCIDs referenced by this structure element and its children.

These MCIDs are added to the mcids Dictionary provided.

The Dictionary maps Page objects to a HashSet of MCID integer IDs.
