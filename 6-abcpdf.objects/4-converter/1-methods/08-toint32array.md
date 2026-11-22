# ToInt32Array Function

Attempts to convert an ArrayAtom into an array of ints, resolving any references as necessary.

## Syntax

*C#*

`int[] ToInt32Array(`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)` atom, int def)`

## Params

| Name | Description |
| :---: | --- |
| atom | The [ArrayAtom](../../../7-abcpdf.atoms/arrayatom/index.md) from which to obtain the values. |
| def | A default value for any entries which could not be converted to the correct type. |
| return | The array. |

## Notes

Attempts to convert an ArrayAtom into an array of ints, resolving any references as necessary.

If the atom does not resolve to an ArrayAtom, then the return value will be null.
