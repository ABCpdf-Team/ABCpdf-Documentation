# PageLoadMethod Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `PageLoadMethodType` | Default | No | The method for loading URI/HTML. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

This property specifies the method to load the URI/HTML page.

The PageLoadMethodType enumeration can take any of the following values:

- Default — this is currently the same as MonikerForHtml.
- MonikerForHtml — Moniker is used to load the page.
- WebBrowserNavigate — IWebBrowser2::Navigate is used to load the page. [HostWebBrowser](hostwebbrowser.md) must be true to use this value.

This property affects the [NoCookie](nocookie.md) property and the [GetHttpStatusCode](../1-methods/gethttpstatuscode.md) method.

## Example

See the [HttpAdditionalHeaders](httpadditionalheaders.md) property.

Also see example code in: [XHtmlOptions HttpAdditionalHeaders Property](httpadditionalheaders.md).
