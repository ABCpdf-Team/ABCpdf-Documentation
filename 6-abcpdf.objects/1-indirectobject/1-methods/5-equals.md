# Equals Function

Test whether the two IndirectObjects are the same.

## Syntax

[C#]

```csharp
bool Equals(IndirectObject other)override bool Equals(object obj)bool Equals(IndirectObject other, ComparisonType type)
```

## Params

| **Name** | **Description** |
| --- | --- |
| other | The object to test against. |
| obj | The object to test against. |
| type | The type of comparison to perform. |
| return | Whether the objects are equal. |

## Notes

This method can be used to determine whether the specified object is equal to the current object.

Objects are considered equal if they refer to the same underlying object within the PDF document. So by default this method determines object equality rather than value equality.

To perform other types of equality test you can use the overload that accepts a ComparisonType. The comparison type specifies the type of data to compare.

The ComparisonType type is a flags enumeration so different values can be combined together using bitwise operations.

The ComparisonType enumeration may take the following values:

* None - Compare nothing.
* Object - Compare the underlying PDF object.
* ID - Compare the ID of the IndirectObject.
* Atom - Compare the value of the Atom.
* Data - Compare the data associated with the stream, if this is a stream.

Only if all the comparisons are true are the objects said to be equal.

## Example

None
