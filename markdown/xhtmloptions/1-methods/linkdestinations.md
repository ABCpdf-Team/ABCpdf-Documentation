# LinkDestinations Method

Convert a restricted selection of external links to internal links.

## Syntax

```csharp
int LinkDestinations(IEnumerable<int> ids)
int LinkDestinations(IEnumerable<int> linkIDs, IEnumerable<int> destIDs, bool linkPages)
```

## Params

| Name | Description |
| --- | --- |
| ids | Specifies both linkIDs and destIDs. |
| linkIDs | The list of IDs of view objects containing links (anchor tags with href attributes). |
| destIDs | The list of IDs of view objects containing destinations (anchor tags with name attributes). |
| linkPages | Whether links pointing to the URLs of HTML pages (URLs without fragments) are converted to internal links. The default value is false. |
| return | The number of links converted. |

## Notes

This method scans the view objects specified in linkIDs converting external links to internal links where the destinations are found in the view objects specified in destIDs. It is similar to the LinkPages method but allows you to restrict the conversion to lists of view objects.

By default, links in rendered HTML are preserved as is. This means that links in a web page link to external URLs. When you click on them, a browser window will be launched and the original target of the link displayed.

In some situations, you may wish to resolve links within the document so that they take you between pages in the PDF rather than launching an external browser window.

For example, you might add a number of web pages which contain links to each other. Rather than linking to the pages on the original web site, you might like to resolve the links so that they point at the pages as they now appear in the PDF.

Similarly, if you use named destinations (HTML fragments) with links within the document, you will may wish to use this method to convert them from external links to internal ones.

## Example

This example shows how to import an HTML page which uses named 
            destinations.

```csharp
using var doc = new Doc();
doc.Rect.Inset(18, 18);
doc.HtmlOptions.AddLinks = true;
```

