# Remove Function

Removes an item from the collection.

## Syntax

*C#*

`bool Remove(`[`Field`](../../field/index.md)` value)`

⚠ `may throw NotSupportedException()`

## Params

| Name | Description |
| :---: | --- |
| value | The item to be removed. |
| return | True if the item is removed, otherwise false. |

## Notes

Removes an item from the collection.

All Fields collections are read only so calling this function will generate a NotSupportedException.
