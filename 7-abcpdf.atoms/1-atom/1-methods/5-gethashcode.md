# GetHashCode Function

A hash code for the Atom.

## Syntax

```csharp
override int GetHashCode()
int GetHashCode(ComparisonType type)
```

## Params

| Name | Description |
| :---: | --- |
| type | The type of data to hash. |
| return | The returned hash code. |

## Notes

Derives a hash code suitable for use in hashing algorithms and data structures like hash tables.

The override taking a ComparisonType allows you to choose between different ways of evaluating the hash. The enum is flags based so you can combine different options.

The ComparisonType enumeration may take the following values:

- None - Hash a constant value.
- Object - Hash the object - analogous to object equality.
- Atom - Hash the value - analogous to value equality.
