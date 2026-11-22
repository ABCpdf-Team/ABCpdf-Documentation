# GetNextMcid Function

Gets the next available MCID for use in this Form XObject.

## Syntax

```csharp
int GetNextMcid()
```

## Params

| Name | Description |
| :---: | --- |
| return | The next MCID. |

## Notes

An MCID, or Marked Content Identifier, is a number that links a piece of content on a PDF page to its logical role in the document's structure, like a heading, paragraph, or a table cell. Think of it as a unique label that allows you to link a visual item without any semantic structure into a separate semantic structure. This can then tell assistive technologies, like screen readers, both the order in which to read the content and what kind of element it is.

Creating a reusable piece of a PDF, like a FormXObject, can make it tricky to assign unique MCID's when it is placed on a page. This new GetNextMcid function solves that by providing the next available, unused number directly from the FormXObject itself. It scans the object to find the MCID's already in use and then supplies a number one higher than the highest one it has found.

There is also an equivalent function available for use when working with [Page](../../page/index.md) objects.
