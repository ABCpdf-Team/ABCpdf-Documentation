# RemoveAt Function

Removes the [Element](../../1086-element/index.md) at the specified index.

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

Removes the [Element](../../1086-element/index.md) at the specified index.

When an [Element](../../1086-element/index.md) is removed the items that follow the removed item, move up to occupy the vacated spot.
