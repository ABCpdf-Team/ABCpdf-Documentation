# Item Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`Field`](../../field/index.md)` this[int index]`<br>[`Field`](../../field/index.md)` this[string name]` | n/a | No | Get or set the item at the specified index. |

⚠ `may throw ArgumentOutOfRangeException()`  
⚠ `may throw NotSupportedException()`

## Notes

Gets or sets the item at the specified location. In C# this property is the indexer for the class.

The index specified may be a zero based numeric index. If the index is not a valid index this property throws an ArgumentOutOfRangeException.

Alternatively it may be a string specifying a field name. If the name is not one which matches a Field in the collection then a null value will be returned.

All Fields collections are read only so attempting to assign an item using this function will generate a NotSupportedException.
