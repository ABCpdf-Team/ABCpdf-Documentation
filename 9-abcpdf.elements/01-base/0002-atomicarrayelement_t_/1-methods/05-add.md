# Add Function

Add an item to the end of the array.

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

Add an item to the end of the array.

This method adds an item to the array.

If the type indicated is string then a null string will be interpreted as an empty string.

If the type indicated is a double? then a null value will be interpreted as a NullAtom.

All other types are non-nullable.
