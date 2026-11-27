# ForChrome Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IHtmlChromeOptions` | n/a | Yes | An object that provides access to only the HTML options supported by the ABCChrome engine. |

## Notes

The HTML options supported by the ABCChrome engine.

### Supported methods

- [EndTasks](../1-methods/endtasks.md)
- [GetHttpStatusCode](../1-methods/gethttpstatuscode.md)
- [GetScriptReturn](../1-methods/getscriptreturn.md)
- [GetTagIDs](../1-methods/gettagids.md)
- [GetTagRects](../1-methods/gettagrects.md)
- [GetTagUntransformedRects](../1-methods/gettaguntransformedrects.md)
- [LinkPages](../1-methods/linkpages.md)

### Supported properties

- [AddForms](addforms.md)
- [AddLinks](addlinks.md)
- [AddTags](addtags.md)
- [AddIDs](addids.md)
- [AddNames](addnames.md)
- [AllowedSchemes](allowedschemes.md)
- [BaseURI](baseuri.md)
- [BrowserWidth](browserwidth.md)
- [CommandOptions](commandoptions.md)
- [FireShield](fireshield.md)
- [HideBackground](hidebackground.md)
- [InitialWidth](initialwidth.md)
- [IgnoreCertificateErrors](ignorecertificateerrors.md)
- [Media](media.md)
- [OnLoadScript](onloadscript.md)
- [ProcessOptions](processoptions.md)
- [RepaintDelay](repaintdelay.md)
- [RepaintTimeout](repainttimeout.md)
- [RetryCount](retrycount.md)
- [Timeout](timeout.md)
- [UseScript](usescript.md)
- [UseProxyServer](useproxyserver.md)

## Example

```csharp
using var doc = new Doc();
doc.HtmlOptions.Engine = EngineType.Chrome146;
doc.HtmlOptions.ForChrome.AddLinks = true;

// You can store a reference to the filter to reduce code repetition
var options = doc.HtmlOptions.ForChrome;

options.UseScript = false;
options.AddTags = true;

doc.AddImageUrl("http://www.websupergoo.com");
doc.Save("wsg1.pdf");
```
