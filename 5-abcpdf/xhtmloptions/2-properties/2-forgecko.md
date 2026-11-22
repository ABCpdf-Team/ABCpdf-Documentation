# ForGecko Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IHtmlGeckoOptions` | n/a | Yes | An object that provides access to only the HTML options supported by the Gecko HTML engine. |

## Notes

The HTML options supported by the ABCGecko HTML engine.

### Supported methods

- GetGeckoVersion — also initializes the Gecko engine.
- [EndTasks](../1-methods/endtasks.md)
- [GetHttpStatusCode](../1-methods/gethttpstatuscode.md)
- [GetScriptReturn](../1-methods/getscriptreturn.md)
- [GetTagIDs](../1-methods/gettagids.md)
- [GetTagRects](../1-methods/gettagrects.md)
- [GetTagUntransformedRects](../1-methods/gettaguntransformedrects.md)
- [LinkDestinations](../1-methods/linkdestinations.md)
- [LinkPages](../1-methods/linkpages.md)

### Supported properties

- [AddForms](addforms.md)
- [AddLinks](addlinks.md)
- [AddMovies](addmovies.md) (Flash only)
- [AddTags](addtags.md)
- [AllowedSchemes](https://www.websupergoo.com/helppdfnet/source/5-abcpdf/xhtmloptions/2-properties/allowedschemes.htm)
- [BrowserWidth](browserwidth.md)
- [ContentCount](contentcount.md)
- [FontEmbed](fontembed.md)
- [FontSubset](fontsubset.md)
- [FontSubstitute](fontsubstitute.md)
- [FontProtection](fontprotection.md)
- [HideBackground](hidebackground.md)
- [ImageQuality](imagequality.md)
- [ImprovePageBreakAvoid](improvepagebreakavoid.md)
- [ImprovePageBreakInTable](improvepagebreakintable.md)
- [InitialWidth](initialwidth.md)
- [LogonName](logonname.md)
- [LogonPassword](logonpassword.md)
- [MakeFieldNamesUnique](makefieldnamesunique.md)
- [Media](media.md)
- [NoDefaultBackground](nodefaultbackground.md)
- [NoSnapRounding](nosnaprounding.md)
- [OnLoadScript](onloadscript.md)
- [ProcessOptions](processoptions.md)
- [RequestMethod](requestmethod.md)
- [RetryCount](retrycount.md)
- [Timeout](timeout.md)
- [UseNoCache](usenocache.md)
- [UseScript](usescript.md)

The [HttpAdditionalHeaders](httpadditionalheaders.md) property is supported under some circumstances but because these are unusual it is not included in this interface. For details see the documentation for this property.

## Example

```csharp
using var doc = new Doc();
doc.HtmlOptions.Engine = EngineType.Gecko;
doc.HtmlOptions.ForGecko.AddLinks = true;

// You can store a reference to the filter to reduce code repetition
var options = doc.HtmlOptions.ForGecko;

options.AddLinks = true;

doc.AddImageUrl("http://www.websupergoo.com");
doc.Save("wsg2.pdf");
```
