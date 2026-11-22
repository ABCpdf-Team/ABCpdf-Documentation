# TaggedPageNumbers Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | Yes | Gets a list of page numbers of pages where tags will be added. |

## Notes

Gets a read-only list of page numbers of pages where tags will be added.

After Tag is called, the required tags are cached for insertion at the point the Doc is saved.

This property tells you on which pages they will be added.

If there are no tags to be added the property will be null.
