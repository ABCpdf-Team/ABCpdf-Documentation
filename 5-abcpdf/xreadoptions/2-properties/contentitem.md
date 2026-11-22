# ContentItem Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `ContentItemType` | Default | No | Gets or sets the content items to process. |

## Notes

The ContentItemType enumeration may take the following values:

- Default – specifies that module-specific default settings should be used.
- Content – specifies to import only main content.
- WithMarkup – specifies to import main content and mark-up.

This property is currently used only when importing MS Word-supported documents using the [MSOffice](1-readmodule.md) read module.

While the Content setting does allow the import of comments (popup or postit note type structures) they are non-interactive. If this is something you require you may prefer the [RichConversion](richconversion.md) property.
