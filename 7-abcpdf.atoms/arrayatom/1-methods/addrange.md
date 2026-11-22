# AddRange Function

Adds the elements in the supplied array at the end of this array

## Syntax

*C#*

`void AddRange(`[`ArrayAtom`](../index.md)` array)`  
`void AddRange(ICollection<Atom> collection)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| array | The array whose elements should be added. |
| collection | The collection whose elements shall be added. |

## Notes

Adds the elements in the supplied array at the end of this array.

If the supplied array is null then an exception will be raised.
