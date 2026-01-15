# LogonName Property

&nbsp;

## Notes

This property determines the authentication user name to be used when accessing secured web sites.

For example you might set this property to "MyServer\Steve" to authenticate as Steve when accessing a particular web site.

These properties are specific to the MSHTML and ABCGecko HTML engines. They do not function for the other HTML engines.

This property needs to be used in conjunction with the LogonPassword property.

ABCpdf is a user like any other user. When it is logged in it stays logged in until the session times out or until you explicitly log it out. So if you wish ABCpdf to log on as a different user you must ensure that it is logged out first.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

## Example

The following example shows this property may be used.

```csharp
using var doc = new Doc();
string uri = "https://www.websupergoo.com/";
// Assign name and password
doc.HtmlOptions.Engine = EngineType.Gecko;
doc.HtmlOptions.LogonName = "Steve";
doc.HtmlOptions.LogonPassword = "stevepassword";
// Add HTML page
doc.AddImageUrl(uri);
// Save the document
doc.Save(Server.MapPath("HtmlOptionsLogon.pdf")); // Windows specific);
```

