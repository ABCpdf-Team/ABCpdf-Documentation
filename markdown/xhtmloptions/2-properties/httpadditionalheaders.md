# HttpAdditionalHeaders Property

&nbsp;

## Notes

This property specifies HTTP headers added to the default headers. It must follow the syntax of HTTP headers, typically delimited using a cr+lf combination.

For example, you may add the cookies from a response to a request under some authentication (e.g. ASP.NET Forms) where a session ID is returned for subsequent requests so re-authentication is not needed. See the NoCookie property for further information if you specify cookies in the HTTP headers.

The headers are sent only in the request for the URL; they are not sent in the requests for the linked resources (e.g. CSS and images) in the obtained HTML page.

The additional headers are always used by the MSHTML Engine. Under Gecko, these headers are only sent if you are using the Screen Media or if you are using the POST RequestMethod. When this occurs, ABCpdf needs to obtain and store a local copy of the web page before invoking the engine. This property is not valid under ABCChrome.

## Example

The following example shows how this property may be used.

```csharp
using var doc = new Doc();
string url = "https://www.websupergoo.com/"; // assign appropriate URL
var request = (HttpWebRequest)WebRequest.Create(url);
request.CookieContainer = new CookieContainer(); // required for HttpWebResponse.Cookies
request.Credentials = null; // assign appropriate credentials
using (var resp = request.GetResponse()) {
  // cookieless Forms Authentication adds authentication ticket to the URL
  url = resp.ResponseUri.AbsoluteUri;
  var response = (HttpWebResponse)resp;
  if (response.Cookies.Count > 0) { // includes ASP.NET_SessionId
    bool needsCookie2 = false;
    var builder = new StringBuilder("Cookie: ");
    for (int i = 0; i < response.Cookies.Count; ++i) {
      var cookie = response.Cookies[i];
      if (!needsCookie2 && cookie.Version != 1)
        needsCookie2 = true;
      if (i > 0)
        builder.Append("; ");
      builder.Append(cookie.ToString());
    }
    builder.Append(!needsCookie2 ? "\r\n" : "\r\nCookie2: $Version=1\r\n");
    doc.HtmlOptions.HttpAdditionalHeaders = builder.ToString();
  }
}
doc.HtmlOptions.Engine = EngineType.MSHtml;
doc.HtmlOptions.NoCookie = true;
doc.HtmlOptions.PageLoadMethod = PageLoadMethodType.MonikerForHtml;
int id = doc.AddImageUrl(url);
doc.Save(Server.MapPath("HttpHeaders.pdf")); // Windows specific);
```

