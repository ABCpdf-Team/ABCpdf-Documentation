# ToNameArray Function

Attempts to convert an ArrayAtom into an array of names, resolving any references as necessary.

## Syntax

[C#]

```csharp
string[] ToNameArray(<a href="../../../7-abcpdf.atoms/1-atom/default.htm">Atom</a> atom)
```

## Params

| **Name** | **Description** |
| --- | --- |
| atom | The ArrayAtom from which to obtain the values. |
| return | The array. |

## Notes

Attempts to convert an ArrayAtom into an array of names, resolving any references as necessary.

If the atom does not resolve to an ArrayAtom, then the return value will be null.

Any entries which could not be coverted to the correct type will be null.

## Example

None
