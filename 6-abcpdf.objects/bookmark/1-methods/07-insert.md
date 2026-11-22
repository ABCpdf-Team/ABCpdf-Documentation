# Insert Function

Inserts a Bookmark into the list at the specified position.

## Syntax

*C#*

`void Insert(int index, `[`Bookmark`](../index.md)` value)`  
`void Insert(int index, string value)`

⚠ `may throw ArgumentOutOfRangeException()`

## Params

| Name | Description |
| :---: | --- |
| index | The zero-based index at which value should be inserted. |
| value | The bookmark to be added, or the title for a new bookmark to be added. |

## Notes

Inserts an item into the list at the specified position.

You can insert a Bookmark directly or you can use one of the overloaded operators to insert a bookmark with a specified title.

When you insert a string this is encapsulated within a new Bookmark which is then inserted.

Bookmarks can exist in only one place at a time. If the Bookmark supplied is already contained by another object then a [Clone](../../1-indirectobject/1-methods/4-clone.md) of the Bookmark is added.

If the index equals the number of items in the array then the bookmark is appended to the end.

If the index is not a valid index this method throws an ArgumentOutOfRangeException.
