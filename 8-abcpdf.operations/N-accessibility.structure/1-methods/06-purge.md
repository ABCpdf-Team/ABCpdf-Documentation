# Purge Function

Removes any tags which no longer relate to a visible element on the page.

## Syntax

[C#]

```csharp
void Purge(string[] removeEmptyTagsOfType)
```

## Params

| **Name** | **Description** |
| --- | --- |
| removeEmptyTagsOfType | The types of empty tags that should be removed. For example "P". |

## Notes

The tagged structure of the document references items displayed on the page.

If the page is changed then the tagged structure may reference items that no longer exist.

This method scans through the document removing any such unreferenced tags.

Optionally you can also remove empty tags of specified kinds.

For example if content is removed from a paragraph the paragraph may end up empty.

A paragraph with no content is not really a paragraph any more so you may wish to remove it.

In contrast you may not want to remove empty table cells because they may have relevance in.

the context of other cells in their column or row.

## Example

None
