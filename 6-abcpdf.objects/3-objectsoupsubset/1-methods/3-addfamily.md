# AddFamily Function

Add a parent object along with all objects it refers to.

## Syntax

*C#*

`int AddFamily(`[`IndirectObject`](../../1-indirectobject/index.md)` parent)`  
`int AddFamily(`[`DictAtom`](../../../7-abcpdf.atoms/dictatom/index.md)` parent)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| parent | The IndirectObject, or the dictionary atom, to be added. |
| return | The number of objects that were added. |

## Notes

Add a parent object along with all objects it refers to.

If a dictionary is specified there is no parent. In this situation only the objects referred to in the dictionary will be added.

If the parent or dictionary is not part of the soup specified in the [ObjectSoupSubset constructor](1-objectsoupsubset.md) then an exception will be raised.
