# LinkPages Method

Convert external links to internal links wherever possible.

## Syntax

```csharp
void LinkPages()<br> void LinkPages(bool inPageNavigation)
```

## Params

| Name | Description |
| --- | --- |
| inPageNavigation | If true then links will target particular locations on the destination page, if false then they will target just the page. Default false. |
| return | n/a. |

## Notes

This method scans the entire document converting external links to internal links wherever possible. As an alternative you can restrict the scope of the conversion by using the LinkDestinations method.

By default, links in rendered HTML are preserved as is. This means that links in a web page link to external URLs. When you click on them, a browser window will be launched and the original target of the link displayed.

In some situations, you may wish to resolve links within the document so that they take you between pages in the PDF rather than launching an external browser window.

For example, you might add a number of web pages which contain links to each other. Rather than linking to the pages on the original web site, you might like to resolve the links so that they point at the pages as they now appear in the PDF.

Similarly, if you use named destinations (HTML fragments) with links within the document, you will may wish to use this method to convert them from external links to internal ones. If you do this you will probably want to set the AddIDs and AddNames properties to true to ensure that this type of fragment destination is tracked.

## Example

This example shows how to import an HTML page which uses named 
            destinations.

```csharp
using var doc = new Doc();
doc.Rect.Inset(18, 18);
doc.HtmlOptions.AddLinks = true;
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

