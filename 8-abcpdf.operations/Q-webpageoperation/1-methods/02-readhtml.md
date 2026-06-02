# ReadHtml Function

Read a string of HTML into a paged PDF document.

## Syntax

[C#]

```csharp
ReadHtml(string html)
```

## Params

| **Name** | **Description** |
| --- | --- |
| html | The HTML to read. |

## Notes

Read a string of HTML into a paged PDF document.

On return all [Doc](2-properties/01-doc.md) properties are reset to default values.

This method works in a similar way to [Doc.AddImageHtml](5-abcpdf/doc/1-methods/addimagehtml.md) and so it is worth reading the notes here, especially as relates to very large HTML strings.

## Example

None
