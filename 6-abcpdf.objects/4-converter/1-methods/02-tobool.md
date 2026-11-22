# ToBool Function

Attempts to get a boolean from the specified entry in a DictAtom or ArrayAtom resolving any references as necessary.

## Syntax

*C#*

`bool? ToBool(`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)` atom, int index)`  
`bool? ToBool(`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)` atom, string key)`  
`bool? ToBool(`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)` atom)`

## Params

| Name | Description |
| :---: | --- |
| atom | The [DictAtom](../../../7-abcpdf.atoms/dictatom/index.md) or [ArrayAtom](../../../7-abcpdf.atoms/arrayatom/index.md) from which to obtain the value. |
| index | The zero based index from which the value should be obtained. |
| key | The key identifying the entry to be obtained. |
| return | The value. |

## Notes

Attempts to get a boolean from the specified atom resolving any references as necessary.

If the simple overload is used then the atom provided must resolve to a value of the correct type. If not then the return value will be null.

If a key is provided then the atom must resolve to a DictAtom and the entry in the DictAtom must resolve to a value of the correct type. If this is not the case or the key is null, then the return value will be null.

If an index is provided then the atom must resolve to an ArrayAtom and the indexed entry in the ArrayAtom must resolve to a value of the correct type. If this is not the case or if the index is not available, then the return value will be null.
