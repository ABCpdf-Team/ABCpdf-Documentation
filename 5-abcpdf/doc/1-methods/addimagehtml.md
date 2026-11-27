# AddImageHtml Function

Renders a web page specified as HTML.

## Syntax

```csharp
int AddImageHtml(string html)
int AddImageHtml(string html, bool paged, int width, bool disableCache)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| html | The HTML to be rendered. |
| paged | Allows you to override the default [XHtmlOptions.Paged](../../xhtmloptions/2-properties/paged.md) property. |
| width | Allows you to override the default [XHtmlOptions.BrowserWidth](../../xhtmloptions/2-properties/browserwidth.md) property. |
| disableCache | Allows you to override and disable the page cache.<br>See the [XHtmlOptions.PageCacheEnabled](../../xhtmloptions/2-properties/pagecacheenabled.md) property for details. |
| return | The ID of the newly added object. |

## Notes

Use this method to convert raw HTML to PDF.

This method is essentially the same as the [AddImageUrl](addimageurl.md) method but it allows you to use raw HTML rather than having to specify a URL.

Using the MSHTML, ABCGecko and ABCWebKit engines, ABCpdf saves this HTML into a temporary file and renders the file using a 'file://' protocol specifier. So this is a convenience function - it doesn't offer any performance enhancements. Sometimes the IIS users do not have full access to the temp directory. This is determined by the system setup you have on your machine. If this is the case you will get errors returned. So if you are working from ASP you may find that you need to enable access to the temp directory for the ASPNET user, the IUSR_MACHINENAME user or the IWAM_MACHINENAME user.

Under the ABCChrome engine this method works slightly differently and without an intermediate file. While in many cases this is desirable, it may not scale well for very large HTML strings. If your HTML is larger than perhaps a megabyte you may wish to consider saving the HTML to file and referencing it via a 'file://' protocol specifier.

> **Styles and Images.** HTML does not exist within a file and so it does not have a location.
>
> External stylesheets and images are often referenced via relative URLs. Because the HTML has no location it is impossible to resolve these relative reference.
>
> This means you need to provide your stylesheet and image links as absolute references or provide a [BaseURI](../../xhtmloptions/2-properties/baseuri.md) property to allow them to be resolved. The BaseURI property is only available when you are using the ABCChrome [Chrome146, Chrome123, Chrome117 or Chrome86](../../xhtmloptions/2-properties/1-engine.md) HTML rendering engine.
>
> As an alternative you can insert an HTML BASE element into your HTML to specify an appropriate base location, or you can save your HTML to file in an appropriate location and then use AddImageUrl. Note that any HTML BASE tag must appear in the HEAD and it must appear before other references.
>
> For security reasons the ABCChrome engines will not accept "file:///" protocol URIs in the HTML you provide. You have to use HTTP based references for this type of resource. Note that it can also be convenient to embed small images using data URIs.

Make sure your HTML comes from trusted sources. See the Security section of the [HTML / CSS Rendering](../../../3-concepts/g-htmlrender.md) section of the documentation for details.

If a [BaseURI](../../xhtmloptions/2-properties/baseuri.md) with a scheme is specified, the scheme must be one allowed by the [AllowedSchemes](../../xhtmloptions/2-properties/allowedschemes.md) property. If it is not, an ArgumentException is thrown.
