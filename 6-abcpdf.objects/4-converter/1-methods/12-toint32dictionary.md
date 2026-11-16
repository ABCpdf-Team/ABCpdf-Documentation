# ToInt32Dictionary Function

Attempts to convert a DictAtom into a Dictionary of ints, resolving any references as necessary.

## Syntax

[C#]

```csharp
Dictionary&lt;string, int&gt; ToInt32Dictionary(<a href="../../../7-abcpdf.atoms/1-atom/default.htm">Atom</a> atom, int def)
```

## Params

| **Name** | **Description** |
| --- | --- |
| atom | The DictAtom from which to obtain the values. |
| def | A default value for any entries which could not be converted to the correct type. |
| return | The dictionary. |

## Notes

Attempts to convert a DictAtom into a Dictionary of ints, resolving any references as necessary.

If the atom does not resolve to an DictAtom, then the return value will be null.

## Example

None
