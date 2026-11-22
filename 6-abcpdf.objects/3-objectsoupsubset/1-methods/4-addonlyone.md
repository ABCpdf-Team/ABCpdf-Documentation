# AddOnlyOne Function

Add just this object ignoring any objects it may refer to.

## Syntax

*C#*

`bool AddOnlyOne(`[`IndirectObject`](../../1-indirectobject/index.md)` io)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| io | The IndirectObject to be added. |
| return | True if the item was added. |

## Notes

Add a parent object ignoring any objects it may refer to.

If the item was added this function returns true. If the item was not added because the subset already contained it or because the [RemapTypes](../2-properties/remaptypes.md) specified a different remapping then the function returns false.

If the specified object is not part of the soup specified in the [ObjectSoupSubset constructor](1-objectsoupsubset.md) then an exception will be raised.
