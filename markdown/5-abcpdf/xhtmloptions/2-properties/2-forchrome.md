# ForChrome Property

&nbsp;

## Notes

The HTML options supported by the ABCChrome engine. Supported methods

EndTasks GetHttpStatusCode GetScriptReturn GetTagIDs GetTagRects GetTagUntransformedRects LinkPages

Supported properties

AddForms AddLinks AddTags AddIDs AddNames BaseURI BrowserWidth FireShield HideBackground InitialWidth IgnoreCertificateErrors Media OnLoadScript ProcessOptions RepaintDelay RepaintTimeout RetryCount Timeout UseScript UseProxyServer

## Example

```csharp
using var doc = new Doc();
doc.HtmlOptions.Engine = EngineType.Chrome123;
doc.HtmlOptions.ForChrome.AddLinks = true;

// You can store a reference to the filter to reduce code repetition
var options = doc.HtmlOptions.ForChrome;

options.UseScript = false;
options.AddTags = true;

doc.AddImageUrl("http://www.websupergoo.com");
doc.Save(Server.MapPath("wsg1.pdf")); // Windows specific);
```

