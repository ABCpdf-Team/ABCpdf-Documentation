# GetText Function

Extract content from the current page in a specified format.

## Syntax

```csharp
string GetText(string type)
string GetText(Page.TextType type, bool includeAnnotations)
```

## Params

| Name | Description |
| --- | --- |
| type | Format in which to return content. |
| includeAnnotations | Whether to include field and annotation text. |
| return | The returned content. |

## Notes

Convenience method to extract page content. Prefer the overload with `Page.TextType` in newer code; string types remain for backward compatibility.

Supported formats: `Text`, `SVG`, `SVG+`, `SVG+2`, `RawText`.

Text is in layout order, which may differ from reading order; some cases are ambiguous.

For full extraction details, see `Page.GetText`.

## Example

None.
