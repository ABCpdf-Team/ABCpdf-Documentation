# Insert Function

## Syntax

[C#]

```csharp
void Insert(int index, T value)
```

## Params

| **Name** | **Description** |
| --- | --- |
| index | The zero-based index at which value should be inserted. |
| value | The Element to insert into the array. |

## Notes

Inserts an [Element](1086-element/default.md) into the array at the specified position.

If the index equals the number of items in the array then the [Element](1086-element/default.md) is appended to the end.

Most [ArrayElements](default.md) cannot hold null values in a meaningful way. So in general, if you provide a null value this will result in an exception being raised.

Occasionally it is appropriate for [ArrayElements](default.md) to hold null values represented as NullAtoms. You can indicate this is acceptable, by setting the [Nullable](2-properties/03-nullable.md) property.
