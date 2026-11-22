# Bookmark Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Objects.Bookmark`](../../../6-abcpdf.objects/bookmark/index.md) | n/a | Yes | The top level bookmark for the document. |

## Notes

The top level bookmark associated with this document.

PDF documents typically provide a list of bookmarks for easy navigation between pages. In Acrobat this navigation structure is available under the Bookmarks tab. The PDF specification refers to this structure as the document outline.

The document outline comprises of a hierarchy of bookmarks. The bookmark at the top of the hierarchy is available via this property.

See the [Objects.Bookmark](../../../6-abcpdf.objects/bookmark/index.md) object for further details.

This property is read only, but the object it returns can be modified.
