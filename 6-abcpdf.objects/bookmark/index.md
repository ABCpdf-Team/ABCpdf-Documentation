# Bookmark Class

A bookmark or outline item.

PDF documents typically provide a list of bookmarks for easy navigation between pages. In Acrobat this navigation structure is available under the Bookmarks tab. The PDF specification refers to this structure as the document outline.

The document outline comprises of a hierarchy of bookmarks. The bookmark at the top of the hierarchy is available via the [Doc.Bookmark](../../5-abcpdf/doc/2-properties/bookmark.md) property. Typically a bookmark triggers navigation to a particular page but in some cases it may trigger a different and more complex type of action.

Every bookmark holds a collection of all its child bookmarks. As with all collections you can use the Count property to determine the number of items contained and you can iterate through the collection using the standard methods appropriate to the language you are coding in.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       WebSupergoo.ABCpdf14.Objects.Bookmark`  
`          `[`WebSupergoo.ABCpdf14.Objects.Outline`](../outline/index.md)

```
Implements: IList<Bookmark>, ICollection<Bookmark>, IEnumerable<Bookmark>, IList, ICollection, IEnumerable, IEquatable<Bookmark>
```

## Methods

| Method | Description |
| --- | --- |
| [CopyTo](1-methods/02-copyto.md) | Copies the Bookmarks into an array. |
| [Add](1-methods/03-add.md) | Adds a Bookmark to the end of the list. |
| [Clear](1-methods/04-clear.md) | Removes all Bookmarks from the list. |
| [Contains](1-methods/05-contains.md) | Determines whether the list contains a specific Bookmark. |
| [IndexOf](1-methods/06-indexof.md) | Determines the index of a specific Bookmark. |
| ⚠ [Insert](1-methods/07-insert.md) | Inserts a Bookmark into the list at the specified position. |
| [Remove](1-methods/08-remove.md) | Removes a Bookmark from the list. |
| [RemoveAt](1-methods/09-removeat.md) | Remove the Bookmark at the specified location. |
| [GetEnumerator](1-methods/10-getenumerator.md) | Gets an enumerator for the Collection. |
| ⚠ [Adopt](1-methods/11-adopt.md) | Adopt a specified Bookmark. |
| [Refresh](1-methods/12-refresh.md) | Refresh and reload the document Bookmarks. |
|  | [inherited methods...](../1-indirectobject/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Count](2-properties/count.md) | The number of Bookmarks in the collection. |
| ⚠ [Item](2-properties/item.md) | Get or set the Bookmark at the specified index. |
| [Open](2-properties/open.md) | Whether the bookmark appears open or closed. |
| [Page](2-properties/page.md) | The destination Page associated with this bookmark. |
| [PageID](2-properties/pageid.md) | The destination Page ID associated with this bookmark. |
| [Parent](2-properties/parent.md) | The parent of this Bookmark. |
| [Title](2-properties/title.md) | The bookmark title to be displayed on screen. |
|  | [inherited properties...](../1-indirectobject/index.md) |
