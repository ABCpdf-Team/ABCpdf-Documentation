# GetHashCode Method

Gets a hash code of this JavaScript value.

## Syntax

```csharp
override int GetHashCode()
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| return | A hash code for this object. |

## Notes

The method returns a hash code for this JavaScript value. If this is a JavaScript structural object (non-primitive), the hash code represents the object reference and not the object value.
