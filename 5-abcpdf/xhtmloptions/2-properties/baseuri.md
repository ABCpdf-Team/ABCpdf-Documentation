# BaseURI Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "" | No | The base URL to use for all relative URLs in the page. |

## Notes

The base URL to use for all relative URLs in the page.

This property is most commonly used in conjunction with AddImageHtml. Because HTML has no location relative URLs will not work. By specifying a base URI - equivalent to the HTML BASE element - these can be easily resolved.

The BaseURI property is only available for the ABCChrome [Chrome146, Chrome123, Chrome117 and Chrome86](1-engine.md) HTML rendering engines.

If the BaseURI includes a scheme, it must be one allowed by the [AllowedSchemes](https://www.websupergoo.com/helppdfnet/source/5-abcpdf/xhtmloptions/2-properties/allowedschemes.htm) property.
