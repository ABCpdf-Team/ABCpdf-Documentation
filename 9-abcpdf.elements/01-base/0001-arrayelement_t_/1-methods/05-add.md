# Add Function

Add an [Element](../../1086-element/index.md) to the end of the array.

## Syntax

```csharp
void Add(T value)
```

*C#*

⚠ `NullReferenceException: Thrown if an attempt is made to insert a null value in a non-`[`Nullable`](../2-properties/03-nullable.md)` array.`

## Params

| Name | Description |
| :---: | --- |
| value | The value. |

## Notes

Add an [Element](../../1086-element/index.md) to the end of the array.

This method adds an [Element](../../1086-element/index.md) to the array.

Most [ArrayElements](../index.md) cannot hold null values in a meaningful way. So in general, if you provide a null value this will result in an exception being raised.

Occasionally it is appropriate for [ArrayElements](../index.md) to hold null values represented as NullAtoms. You can indicate this is acceptable, by setting the [Nullable](../2-properties/03-nullable.md) property.
