# Unknown Function

## Syntax

```csharp
string GetText(string type)<br> string GetText(Page.TextType type, bool includeAnnotations)
```

## Params

| Name | Description |
| --- | --- |
| type | The format in which to return the content. |
| includeAnnotations | Whether to include field and annotation text. |
| return | The returned content. |

## Notes

This function allows you to extract the content from a page.

This is a convenience function for easy access to the content of the current page. For full details of how text extraction works see the Page.GetText function.

The following formats are supported - "Text", "SVG", "SVG+", "SVG+2" and "RawText". These types can be specified as strings for backwards compatibility with older code. However in newer code you should prefer the function overload that takes a  Page.TextType enumeration.

Text is in layout order which may not be the same as reading order. ABCpdf will make sensible assumptions on how items of text should be combined but some situations are ambiguous.

The current release of ABCpdf is much more sophisticated than previous ones when it comes to extracting text. However if you are relying on the ABCpdf  8 simplified model you can use the "RawText" format for backwards compatibility.

