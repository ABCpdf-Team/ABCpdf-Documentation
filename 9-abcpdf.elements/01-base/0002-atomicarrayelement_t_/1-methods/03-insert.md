# Insert Function

Inserts an item into the array at the specified position.

## Syntax

[C#]

```csharp
void Insert(int index, T value)
```

## Params

| **Name** | **Description** |
| --- | --- |
| index | The zero-based index at which the value should be inserted. |
| value | The items to insert into the array. |

## Notes

Inserts an item into the array at the specified position.

If the index equals the number of items in the array then the items is appended to the end.

If the type indicated is string then a null string will be interpreted as an empty string.

If the type indicated is a double? then a null value will be interpreted as a NullAtom.

All other types are non-nullable.
