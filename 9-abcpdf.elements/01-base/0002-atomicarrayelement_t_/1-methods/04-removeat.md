# RemoveAt Function

Removes the item at the specified index.

## Syntax

```csharp
void RemoveAt(int index)
```

*C#*

⚠ `ArgumentOutOfRangeException: Thrown if the index provided is not valid.`

## Params

| Name | Description |
| :---: | --- |
| index | The zero-based index of the item to remove. |

## Notes

Removes the item at the specified index.

When an item is removed the items that follow the removed item, move up to occupy the vacated spot.
