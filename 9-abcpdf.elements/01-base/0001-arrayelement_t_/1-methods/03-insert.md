# Insert Function

Inserts an [Element](../../1086-element/index.md) into the array at the specified position.

## Syntax

```csharp
void Insert(int index, T value)
```

*C#*

⚠ `ArgumentOutOfRangeException: Thrown if the index provided is not valid.`⚠ `NullReferenceException: Thrown if an attempt is made to insert a null value in a non-`[`Nullable`](../2-properties/03-nullable.md)` array.`

## Params

| Name | Description |
| :---: | --- |
| index | The zero-based index at which value should be inserted. |
| value | The [Element](../../1086-element/index.md) to insert into the array. |

## Notes

Inserts an [Element](../../1086-element/index.md) into the array at the specified position.

If the index equals the number of items in the array then the [Element](../../1086-element/index.md) is appended to the end.

Most [ArrayElements](../index.md) cannot hold null values in a meaningful way. So in general, if you provide a null value this will result in an exception being raised.

Occasionally it is appropriate for [ArrayElements](../index.md) to hold null values represented as NullAtoms. You can indicate this is acceptable, by setting the [Nullable](../2-properties/03-nullable.md) property.
