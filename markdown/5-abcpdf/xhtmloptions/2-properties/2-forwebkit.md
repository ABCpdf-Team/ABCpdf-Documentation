# ForWebKit Property

&nbsp;

## Notes

The HTML options supported by the ABCWebKit engine. Supported methods

EndTasks

Supported properties

AddLinks BrowserWidth FireShield HideBackground Media OnLoadScript ProcessOptions RepaintTimeout [but not RepaintDelay] RetryCount Timeout UseScript

## Example

```csharp
using var doc = new Doc();
doc.HtmlOptions.Engine = EngineType.WebKit;
doc.HtmlOptions.ForWebKit.AddLinks = true;

// You can store a reference to the filter to reduce code repetition
var options = doc.HtmlOptions.ForWebKit;

options.UseScript = false;

doc.AddImageUrl("http://www.websupergoo.com");
doc.Save(Server.MapPath("wsg4.pdf")); // Windows specific);
```

