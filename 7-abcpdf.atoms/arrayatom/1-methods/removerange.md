# RemoveRange Function

Removes a range of elements from the source array

## Syntax

```csharp
void RemoveRange(int index, int count)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| index | The zero-based index specifying the first element. |
| count | The number of elements to be removed. |

## Notes

Removes a range of elements from the source array.

If the index is equal to the [Count](../2-properties/count.md) then the elements are added to the end of the array.

If the index or count is invalid then an exception will be raised.
