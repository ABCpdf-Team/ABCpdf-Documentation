# ForMSHtml Property

&nbsp;

## Notes

The HTML options supported by the MSHTML engine. Supported methods

GetHttpStatusCode GetScriptReturn GetTagIDs GetTagRects GetTagUntransformedRects LinkDestinations LinkPages PageCacheClear PageCachePurge SetTheme Supported properties

AddForms AddLinks AddMovies AddTags AdjustLayout AutoTruncate BreakMethod BreakZoneSize BrowserWidth CoerceVector ContentCount DeactivateWebBrowser DisableVectorCoercion DoMarkup FontEmbed FontProtection FontSubset FontSubstitute HideBackground HostWebBrowser HtmlCallback HtmlEmbedCallback HttpAdditionalHeaders ImageQuality InitialWidth LogonName LogonPassword MakeFieldNamesUnique MaxAtomicImageSize NoCookie NoTheme OnLoadScript PageCacheEnabled PageCacheExpiry PageCacheSize Paged PageLoadMethod ProcessOptions (See MSHtmlBootstrap) ReloadPage RequestMethod RetryCount TargetLinks Timeout TransferModule UseActiveX UseJava UseNoCache UserAgent UseResync UseScript UseTheme UseVideo

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
doc.Save(Server.MapPath("wsg3.pdf")); // Windows specific);
```

