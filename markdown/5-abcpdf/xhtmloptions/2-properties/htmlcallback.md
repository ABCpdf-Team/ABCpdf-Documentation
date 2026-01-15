# HtmlCallback Property

&nbsp;

## Notes

This delegate is called during HTML rendering.

During the time that HTML rendering is taking place delegates are called periodically. This gives a mechanism for tracking progress and for intercepting and modifying or querying pages on the fly.

If the page is obtained from the cache then the delegate will not be called.

Note that the amount of work done during a callback should be kept to a minimum.

The definition of the HtmlCallback multicast delegate is as follows.

[C#] delegate void HtmlCallback(string stage, object page);

[Visual Basic] Delegate Sub HtmlCallback(stage As String, page As Object);

Current values for the stage variable are 'get width', 'get height' and 'render'. The first occurs prior to finding the natural width of the HTML (the width it can occupy without scrolling). The second occurs prior to finding the natural height. The third occurs prior to translation into PDF format.

The page is provided via a mshtml.HTMLDocumentClass object - see Microsoft documentation for details. However note that while the interface is standard the behavior may not be identical. For example element positions may not be available.

## Example

The following example shows the effect that this parameter has on 
            HTML rendering.

```csharp
using var doc = new Doc();
string uri = "https://photojournal.jpl.nasa.gov/catalog/PIA24312";
// Set up the callback
var theLog = new StringBuilder();
doc.HtmlOptions.HtmlCallback = (string stage, object page) => theLog.AppendLine(stage);
// Render html page
doc.AddImageUrl(uri);
// Add log over the top of the content
doc.Rect.Inset(100, 100);
doc.Color.String = "255 0 0";
doc.FontSize = 96;
doc.AddText(theLog.ToString());
// Save the document
doc.Save(Server.MapPath("HtmlOptionsCallback.pdf")); // Windows specific);
```

