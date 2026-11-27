# AllowedSchemes Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "http;https;file;data;blob" | No | The URL schemes which may be used for the page URL and the BaseURI, separated by semicolons. |

## Notes

This property applies to all the HTML engines: [ABCChrome](2-forchrome.md), [ABCGecko](2-forgecko.md), [ABCWebKit](2-forwebkit.md) and [MSHTML](2-formshtml.md).

The URL schemes which may be used for the URL passed to [AddImageUrl](../../doc/1-methods/addimageurl.md) and for the [BaseURI](baseuri.md). Scheme names are separated by semicolons - for example "https" or "http;https".

If the URL or the BaseURI uses a scheme which is not allowed, [AddImageUrl](../../doc/1-methods/addimageurl.md) and [AddImageHtml](../../doc/1-methods/addimagehtml.md) throw an ArgumentException. The message names the scheme but not the URL, because URLs can contain sensitive information such as access tokens.

With the ABCChrome engines the same check is also made inside the ABCChrome process, before the page is loaded.

**Setting the value**

The value is kept exactly as you set it and is interpreted when it is used. Scheme names are not case sensitive and a trailing colon is allowed, so "HTTPS:" is the same as "https". Spaces, empty entries and duplicates are ignored.

A null or empty value means the default list.

If any entry is not a valid scheme name, [AddImageUrl](../../doc/1-methods/addimageurl.md) and [AddImageHtml](../../doc/1-methods/addimagehtml.md) throw an ArgumentException.

Any valid scheme may be added, so take care which ones you allow. In particular about, chrome, chrome-extension, chrome-untrusted, devtools and view-source give access to the internals of the browser, and javascript runs script rather than loading a page. With the ABCChrome engines, Chrome treats most about: URLs, such as about:version, as its internal pages.

**How URLs are checked**

A URL without a scheme is interpreted in the same way as the .NET UriBuilder class interprets it, which is also how the ABCChrome and ABCWebKit engines interpret it. For example "www.example.com" is an http URL and "C:\\Pages\\page.htm" is a file URL.

A host and port without a scheme, such as "localhost:8080/page", is an exception. The part before the colon is taken to be the scheme, so this URL has the scheme "localhost" and is rejected. Give the full URL instead - "http://localhost:8080/page". Adding "localhost" to this property would not help, because the engines cannot load a URL of that form.

The [BaseURI](baseuri.md) is checked only if it includes a scheme. A BaseURI without a scheme is relative to the page URL, which has already been checked.

The "data" entry controls data URLs that you pass to [AddImageUrl](../../doc/1-methods/addimageurl.md). It does not affect [AddImageHtml](../../doc/1-methods/addimagehtml.md). The ABCChrome engines receive HTML from AddImageHtml as a data URL, but this is always allowed for the page itself, whatever the value of this property.

**What this property does not cover**

This property controls the page URL and the BaseURI. It does not limit what the page itself loads - images, style sheets, scripts, frames and redirects. Those are subject to the security rules of the HTML engine and, for file access, to [FireShield](fireshield.md).

Restricting the schemes does not stop an http or https URL from reaching an address on your internal network. If you convert URLs from sources you do not trust, see the Security section of the [HTML / CSS Rendering](../../../3-concepts/g-htmlrender.md) documentation.

**Upgrading**

URL schemes were not checked before this property was added. With the default value, URLs which use other schemes now throw an ArgumentException even if they rendered before. To allow such a URL, add its scheme to this property. In particular:

- ftp is not included in the default. The Chrome117 and later ABCChrome engines cannot load ftp URLs because Chrome no longer supports FTP. Other engines may still be able to load them - add "ftp" if you need it.
- Schemes specific to the MSHTML engine, such as res, mk (for example mk:@MSITStore:) and mhtml, are not included in the default. Add the ones you need.
- about:blank is not included in the default. Add "about" to allow it - but see above - or use [AddImageHtml](../../doc/1-methods/addimagehtml.md) with empty or minimal HTML to get a blank page.
- A host and port without a scheme needs the scheme adding to the URL. See above.

If you convert URLs from other people, you may prefer to narrow the list rather than widen it - for example to "https" only.

## Example

Here we allow only secure web pages, as you might if the URLs came from your users. The http URL is rejected and the https URL is rendered.

```csharp
using var doc = new Doc();
doc.HtmlOptions.AllowedSchemes = "https";
try {
  doc.AddImageUrl("http://www.websupergoo.com/");
}
catch (ArgumentException ex) {
  // The URL scheme "http" is not in HtmlOptions.AllowedSchemes.
  Console.WriteLine(ex.Message);
}
doc.AddImageUrl("https://www.websupergoo.com/");
doc.Save("HtmlOptionsAllowedSchemes.pdf");
```
