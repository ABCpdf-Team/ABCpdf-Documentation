# GetNextMcid Function

Gets the next available MCID  for use on this Page.

## Syntax

[C#]

```csharp
int GetNextMcid()
```

## Params

| **Name** | **Description** |
| --- | --- |
| return | The next MCID. |

## Notes

A Marked Content Identifier or MCID is a numeric tag that connects visible content on a PDF page to its corresponding entry in the document's logical structure tree. This connection allows you to take an item that has no built in semantics, like a drawn rectangle or a block of text, and assign it a role such as a heading, list item, or table cell. Assistive technologies rely on these MCIDs to determine the correct reading order and to understand the meaning of each content element.

When you work with a Page object directly, you may need to assign fresh MCIDs to new content without accidentally reusing numbers already taken by existing elements on that page. The new GetNextMcid function on the Page object scans the page for the highest MCID currently in use and returns the next available number, which is simply that highest value plus one. This guarantees that every piece of content you add receives a unique identifier, preserving the integrity of the structure tree and maintaining full compatibility with PDF accessibility standards.

There is also an equivalent function available for use when working with [FormXObjects](formxobject/default.md).

## Example

None
