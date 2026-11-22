# Item Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`IndirectObject`](../../1-indirectobject/index.md)` this[int index]` | n/a | No | Gets or sets the object at the specified index. |

⚠ `may throw ArgumentOutOfRangeException()`

## Notes

Gets or sets the IndirectObject at the specified index. In C# this property is the indexer for the class.

An IndirectObject can exist in only one ObjectSoup at a time. If the object supplied is already contained in another ObjectSoup then a Clone of the object is inserted.

When an IndirectObject is inserted the [ID](../../1-indirectobject/2-properties/1-id.md) is updated to reflect the position of the object within the Soup.
