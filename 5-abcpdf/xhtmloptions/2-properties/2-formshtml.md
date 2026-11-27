# ForMSHtml Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IHtmlMSHtmlOptions` | n/a | Yes | An object that provides access to only the HTML options supported by the MSHTML engine. |

## Notes

The HTML options supported by the MSHTML engine.

### Supported methods

- [GetHttpStatusCode](../1-methods/gethttpstatuscode.md)
- [GetScriptReturn](../1-methods/getscriptreturn.md)
- [GetTagIDs](../1-methods/gettagids.md)
- [GetTagRects](../1-methods/gettagrects.md)
- [GetTagUntransformedRects](../1-methods/gettaguntransformedrects.md)
- [LinkDestinations](../1-methods/linkdestinations.md)
- [LinkPages](../1-methods/linkpages.md)
- [PageCacheClear](../1-methods/pagecacheclear.md)
- [PageCachePurge](../1-methods/pagecachepurge.md)
- [SetTheme](../1-methods/settheme.md)

### Supported properties

- [AddForms](addforms.md)
- [AddLinks](addlinks.md)
- [AddMovies](addmovies.md)
- [AddTags](addtags.md)
- [AdjustLayout](adjustlayout.md)
- [AllowedSchemes](allowedschemes.md)
- [AutoTruncate](autotruncate.md)
- [BreakMethod](breakmethod.md)
- [BreakZoneSize](breakzonesize.md)
- [BrowserWidth](browserwidth.md)
- [CoerceVector](coercevector.md)
- [ContentCount](contentcount.md)
- [DeactivateWebBrowser](deactivatewebbrowser.md)
- [DisableVectorCoercion](disablevectorcoercion.md)
- [DoMarkup](domarkup.md)
- [FontEmbed](fontembed.md)
- [FontProtection](fontprotection.md)
- [FontSubset](fontsubset.md)
- [FontSubstitute](fontsubstitute.md)
- [HideBackground](hidebackground.md)
- [HostWebBrowser](hostwebbrowser.md)
- [HtmlCallback](htmlcallback.md)
- [HtmlEmbedCallback](htmlembedcallback.md)
- [HttpAdditionalHeaders](httpadditionalheaders.md)
- [ImageQuality](imagequality.md)
- [InitialWidth](initialwidth.md)
- [LogonName](logonname.md)
- [LogonPassword](logonpassword.md)
- [MakeFieldNamesUnique](makefieldnamesunique.md)
- [MaxAtomicImageSize](maxatomicimagesize.md)
- [NoCookie](nocookie.md)
- [NoTheme](notheme.md)
- [OnLoadScript](onloadscript.md)
- [PageCacheEnabled](pagecacheenabled.md)
- [PageCacheExpiry](pagecacheexpiry.md)
- [PageCacheSize](pagecachesize.md)
- [Paged](paged.md)
- [PageLoadMethod](pageloadmethod.md)
- [ProcessOptions](processoptions.md) (See [MSHtmlBootstrap](../../../3-concepts/d-registrykeys.md))
- [ReloadPage](reloadpage.md)
- [RequestMethod](requestmethod.md)
- [RetryCount](retrycount.md)
- [TargetLinks](targetlinks.md)
- [Timeout](timeout.md)
- [TransferModule](transfermodule.md)
- [UseActiveX](useactivex.md)
- [UseJava](usejava.md)
- [UseNoCache](usenocache.md)
- [UserAgent](useragent.md)
- [UseResync](useresync.md)
- [UseScript](usescript.md)
- [UseTheme](usetheme.md)
- [UseVideo](usevideo.md)

## Example

```csharp
using var doc = new Doc();
doc.HtmlOptions.Engine = EngineType.MSHtml;
doc.HtmlOptions.ForMSHtml.AddLinks = true;

// You can store a reference to the filter to reduce code repetition
var options = doc.HtmlOptions.ForMSHtml;

options.UseActiveX = true;
options.AutoTruncate = true;

doc.AddImageUrl("http://www.websupergoo.com");
doc.Save("wsg3.pdf");
```
