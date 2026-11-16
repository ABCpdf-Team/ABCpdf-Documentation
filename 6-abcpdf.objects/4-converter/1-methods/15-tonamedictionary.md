# ToNameDictionary Function

Attempts to convert a DictAtom into a Dictionary of names, resolving any references as necessary.

## Syntax

[C#]

```csharp
Dictionary&lt;string, string&gt; ToNameDictionary(<a href="../../../7-abcpdf.atoms/1-atom/default.htm">Atom</a> atom)
```

## Params

| **Name** | **Description** |
| --- | --- |
| atom | The DictAtom from which to obtain the values. |
| return | The dictionary. |

## Notes

Attempts to convert a DictAtom into a Dictionary of names, resolving any references as necessary.

If the atom does not resolve to an DictAtom, then the return value will be null.

Any entries which could not be coverted to the correct type will be null.

## Example

None
