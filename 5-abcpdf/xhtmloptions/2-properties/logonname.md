# LogonName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "" | No | A user name to be used for authentication. |

## Notes

This property determines the authentication user name to be used when accessing secured web sites.

For example you might set this property to "MyServer\\Steve" to authenticate as Steve when accessing a particular web site.

These properties are specific to the MSHTML and ABCGecko HTML engines. They do not function for the other HTML engines.

This property needs to be used in conjunction with the [LogonPassword](logonpassword.md) property.

ABCpdf is a user like any other user. When it is logged in it stays logged in until the session times out or until you explicitly log it out. So if you wish ABCpdf to log on as a different user you must ensure that it is logged out first.

> **ASP.NET Forms Authentication.** The LogonName and LogonPassword properties are related to authentication methods built into HTTP. Methods like Basic (forms) Authentication and Windows Integrated Authentication.
>
> Something like ASP.NET forms based authentication requires a different kind of method because it is under your programmatic control. Because it is under your programmatic control - ABCpdf cannot authenticate itself. Because Authentication is under your programmatic control - you have to Authenticate ABCpdf.
>
> You will need to allow ABCpdf to pass in a user name and password to your page (probably in encoded form via the URL) and then have that page call the FormsAuthentication.Authenticate code using that username and password.
>
> Some of our clients have encoded this information via a time expiring certificate or token to add extra security to the process.
>
> As an alternative you can obtain the HTML of the current page using the HttpResponse.Filter property or by overriding the Render method of the page. You can then present this HTML to ABCpdf using AddImageHtml. If your HTML references resources using relative references you may wish to insert a \<BASE> tag into the HTML before presentation to ABCpdf. Of course any resources you reference would need to be available outside your Authentication scheme.
>
> These properties are only available for the MSHTML and ABCGecko HTML engines. They do not function for the other HTML engines.

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
doc.Save("HtmlOptionsLogon.pdf");
```
