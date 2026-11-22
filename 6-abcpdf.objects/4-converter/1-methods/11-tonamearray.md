# ToNameArray Function

Attempts to convert an ArrayAtom into an array of names, resolving any references as necessary.

## Syntax

*C#*

`string[] ToNameArray(`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)` atom)`

## Params

| Name | Description |
| :---: | --- |
| atom | The [ArrayAtom](../../../7-abcpdf.atoms/arrayatom/index.md) from which to obtain the values. |
| return | The array. |

## Notes

Attempts to convert an ArrayAtom into an array of names, resolving any references as necessary.

If the atom does not resolve to an ArrayAtom, then the return value will be null.

Any entries which could not be coverted to the correct type will be null.
