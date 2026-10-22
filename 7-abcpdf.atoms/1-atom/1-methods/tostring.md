# ToString Function

The string representation of the Atom as it would appear in a 
            PDF.

## Syntax

[C#]

```csharp
override string ToString()string ToString(string format)
```

## Params

| **Name** | **Description** |
| --- | --- |
| format | The format which should be used for the conversion. |
| return | The string representation of the object. |

## Notes

This function derives the content of the object as it will be inserted into the final PDF document.

Note that the string value of an object may be large and it may contain unusual characters.

The [StringAtom](stringatom/1-methods/tostring.md) is the only Atom type to support different format strings. Other Atom types will ignore them.

## Example

None
