# Add Function

Adds a Bookmark to the end of the list.

## Syntax

*C#*

`int Add(`[`Bookmark`](../index.md)` value)`  
`int Add(string value)`

## Params

| Name | Description |
| :---: | --- |
| value | The bookmark to be added, or the title for a new bookmark to be added. |
| return | The position in which the new element was inserted. |

## Notes

This method adds an item to the end of the list.

You can add a Bookmark directly or you can use one of the overloaded operators to add a bookmark with a specified title.

When you add a string this is encapsulated within a new Bookmark which is then inserted.

Bookmarks can exist in only one place at a time. If the Bookmark supplied is already contained by another object then a [Clone](../../1-indirectobject/1-methods/4-clone.md) of the Bookmark is added.
