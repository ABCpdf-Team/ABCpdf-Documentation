# Add Function

Add an item to the end of the collection.

## Syntax

*C#*

`int Add(`[`Field`](../../field/index.md)` value)`

⚠ `may throw NotSupportedException()`

## Params

| Name | Description |
| :---: | --- |
| value | The item to be added. |

## Notes

This method adds an item to the collection.

All Fields collections are read only so calling this function will generate a NotSupportedException.
