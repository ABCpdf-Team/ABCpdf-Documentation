# Bookmarks Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `BookmarkType` | DontCare | No | Bookmark creation strategy. |

## Notes

The BookmarkType enumeration may take any of the following values:

- DontCare – specifies that module-specific default settings should be used.
- None – specifies that no bookmarks should be imported from source documents.
- Heading – specifies that bookmarks should be created using document headings. For example, styled headings in Microsoft Word might be used.

This property is currently used only when importing MS Word-supported documents using the [MSOffice](1-readmodule.md) read module.
