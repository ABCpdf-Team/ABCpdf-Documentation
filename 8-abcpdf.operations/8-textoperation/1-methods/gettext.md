# GetText Function

Get all the text in the page contents.

## Syntax

[C#]

```csharp
string GetText()string GetText(<a href="../../../5-abcpdf/xrect/default.htm">XRect</a> rect, int pageNumber)string GetText(<a href="../../../5-abcpdf/xrect/default.htm">XRect</a>[] rects, int[] pageNumbers)
```

## Params

| **Name** | **Description** |
| --- | --- |
| rect | The rectangle from which to return text. |
| rects | A set of rectangles forming a union from which to return text. |
| pageNumber | The page number - a one based index. |
| pageNumbers | The page numbers - one based indexes. |
| Return | The text. |

## Notes

This method returns the text of the content that has been assigned via the [PageContents](2-properties/pagecontents.md). If the PageContents is null then an exception will be raised.

The overloads of this function allow you to select an area of interest in terms of an area defined by single rectangle or by a union of multiple rectangles. They also allow you to select a subset of pages from which text should be returned. This page array is a set of page numbers - one based indexes - for which order is not important. Passing null for these parameters defaults to the entire page and the entire set of available pages respectively.

The process of getting the text involves scanning through the text fragments in the document and joining them up dependent on their positions and sizes. The result is a standard string with line ends where the line ends in the document have been found.

If there are parts of this string that you are interested in you can use the offset and length of the selections in conjunction with the [Select](select.md) method to identify those portions within the document.

## Example

See the [Group](group.md) function.
