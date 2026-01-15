# AddImageHtml Function

Renders a web page specified as HTML.

## Syntax

```csharp
int AddImageHtml(string html)
int AddImageHtml(string html, bool paged, int width, bool disableCache)
```

## Params

| Name | Description |
| --- | --- |
| html | The HTML to be rendered. |
| paged | Allows you to override the default XHtmlOptions.Paged property. |
| width | Allows you to override the default XHtmlOptions.BrowserWidth property. |
| disableCache | Allows you to override and disable the page cache. See the XHtmlOptions.PageCacheEnabled property for details. |
| return | The ID of the newly added object. |

## Notes

This method is essentially the same as the AddImageUrl method but it allows you to use raw HTML rather than having to specify a URL.

Using the MSHTML, ABCGecko and ABCWebKit engines, ABCpdf saves this HTML into a temporary file and renders the file using a 'file://' protocol specifier. So this is a convenience function - it doesn't offer any performance enhancements. Sometimes the IIS users do not have full access to the temp directory. This is determined by the system setup you have on your machine. If this is the case you will get errors returned. So if you are working from ASP you may find that you need to enable access to the temp directory for the ASPNET user, the IUSR_MACHINENAME user or the IWAM_MACHINENAME user.

Under the ABCChrome engine this method works slightly differently and without an intermediate file. While in many cases this is desirable, it may not scale well for very large HTML strings. If your HTML is larger than perhaps a megabyte you may wish to consider saving the HTML to file and referencing it via a 'file://' protocol specifier.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

