# ReadHtml Function

Read a string of HTML into a paged PDF document.

## Syntax

[C#]

```csharp
void ReadHtml(string html)
```

## Params

| **Name** | **Description** |
| --- | --- |
| html | The HTML to read. |

## Notes

Read a string of HTML into a paged PDF document.

On return all Doc properties are reset to default values as if [Doc.Clear](5-abcpdf/doc/1-methods/clear.md) had been called.

This method works in a similar way to [Doc.AddImageHtml](5-abcpdf/doc/1-methods/addimagehtml.md) and so it is worth reading the notes here, especially as relates to very large HTML strings.

## Example

None
