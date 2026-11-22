# ToStringDictionary Function

Attempts to convert a DictAtom into a Dictionary of strings, resolving any references as necessary.

## Syntax

*C#*

`Dictionary<string, string> ToStringDictionary(`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)` atom)`

## Params

| Name | Description |
| :---: | --- |
| atom | The [DictAtom](../../../7-abcpdf.atoms/dictatom/index.md) from which to obtain the values. |
| return | The dictionary. |

## Notes

Attempts to convert a DictAtom into a Dictionary of strings, resolving any references as necessary.

If the atom does not resolve to an DictAtom, then the return value will be null.

Any entries which could not be coverted to the correct type will be null.
