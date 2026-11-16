# Add Function

## Syntax

[C#]

```csharp
void Add(T value)
```

## Params

| **Name** | **Description** |
| --- | --- |
| value | The value. |

## Notes

Add an [Element](1086-element/default.md) to the end of the array.

This method adds an [Element](1086-element/default.md) to the array.

Most [ArrayElements](default.md) cannot hold null values in a meaningful way. So in general, if you provide a null value this will result in an exception being raised.

Occasionally it is appropriate for [ArrayElements](default.md) to hold null values represented as NullAtoms. You can indicate this is acceptable, by setting the [Nullable](2-properties/03-nullable.md) property.
