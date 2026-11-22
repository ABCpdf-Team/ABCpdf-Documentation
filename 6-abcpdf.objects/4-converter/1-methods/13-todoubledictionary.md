# ToDoubleDictionary Function

Attempts to convert a DictAtom into a Dictionary of doubles, resolving any references as necessary.

## Syntax

*C#*

`Dictionary<string, double> ToDoubleDictionary(`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)` atom, double def)`

## Params

| Name | Description |
| :---: | --- |
| atom | The [DictAtom](../../../7-abcpdf.atoms/dictatom/index.md) from which to obtain the values. |
| def | A default value for any entries which could not be converted to the correct type. |
| return | The dictionary. |

## Notes

Attempts to convert a DictAtom into a Dictionary of doubles, resolving any references as necessary.

If the atom does not resolve to an DictAtom, then the return value will be null.
