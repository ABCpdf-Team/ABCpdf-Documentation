# AddImageUrl Function

Renders a web page specified by URL.

## Syntax

```csharp
int AddImageUrl(string url)
int AddImageUrl(string url, bool paged, int width, bool disableCache)
```

## Params

| Name | Description |
| --- | --- |
| url | The URL for the page to be rendered. The actual value may be modified depending on the value of disableCache/XHtmlOptions.PageCacheEnabled. |
| paged | Allows you to override the default XHtmlOptions.Paged property. |
| width | Allows you to override the default XHtmlOptions.BrowserWidth property. |
| disableCache | Allows you to override and disable the page cache. See the XHtmlOptions.PageCacheEnabled property for details. |
| return | The ID of the newly added object. |

## Notes

This method adds a web page to a document.

- The page is added in accordance with the current XHtmlOptions settings; commonly used settings can be overridden via parameters above.
- Only the first page is drawn; subsequent pages can be drawn using AddImageToChain.
- The web page is scaled to fill the current Rect and transformed using the current Transform.

Caching considerations:

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details.
- The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare.
- If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

MHT support:

- Accepts file-based URLs to MHT (MIME HTML) files saved via IE.
- Complex pages may omit required resources in MHT; ABCpdf attempts to download missing items from the original URL if available.

Security:

- Ensure URLs come from trusted sources; see the HTML / CSS Rendering security section.

## Example

We create an ABCpdf `Doc` object, add our URL and save.

```csharp
using var doc = new Doc();
doc.AddImageUrl("http://www.google.com/");
doc.Save(Server.MapPath("htmlimport.pdf")); // Windows specific
```

For paged HTML, see AddImageToChain.

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![htmlimport.pdf](../../../../images/pdf/htmlimport.pdf.png) — htmlimport.pdf
