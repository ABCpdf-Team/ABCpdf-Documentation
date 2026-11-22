# Media Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `MediaType` | Print | No | The CSS media type to use. |

## Notes

This property applies to the [ABCChrome](2-forchrome.md), [ABCGecko](2-forgecko.md) and [ABCWebKit](2-forwebkit.md) engines.

The MediaType enumeration can take any of the following values:

- Print
- Screen

For the Gecko engine, the Screen media must be used with [UseScript](usescript.md) true. An invalid combination (i.e. Screen with UseScript false) yields an exception when you call AddImageUrl or AddImageHtml.

The same HTML document can achieve different visual representations when rendered on different media by specifying several sets of CSS styles for each medium type. The Gecko engine supports the rendering of Web pages using the print stylesheets and the screen stylesheets.

Because the default is Print, a page is rendered using its print styles. If the PDF looks different from the page in a browser, for example background colors or images are missing, the page's print stylesheet may be hiding them. Set Media to Screen to render the page using its screen styles.

When the Screen media is used in conjunction with the Gecko engine, ABCpdf obtains and stores the web page locally before invoking the engine. Since ABCpdf does not obtain additional headers from the Gecko engine, they are not sent in the request. The kind of headers that may not be sent include Accept, Accept-Language, Accept-Encoding, Keep-Alive, and Accept-Charset. The User-Agent may be different. In most situations, this is unimportant, but if you are relying on these headers, you can use the [HtmlOptions.HttpAdditionalHeaders](httpadditionalheaders.md) property to add your own headers to the request.

## Example

Also see example code in: [ABCpdf Paged HTML Example](../../../4-examples/13-pagedhtml.md).
