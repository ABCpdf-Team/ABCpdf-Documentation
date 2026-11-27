# XHtmlOptions Class

Represents the current HTML rendering settings.

The properties of this object may be used to control the way that the [Doc.AddImageUrl](../doc/1-methods/addimageurl.md) and [Doc.AddImageHtml](../doc/1-methods/addimagehtml.md) methods work.

The methods of this object operate on objects added using the [Doc.AddImageUrl](../doc/1-methods/addimageurl.md) and [Doc.AddImageHtml](../doc/1-methods/addimagehtml.md) methods. Some operations change the document. Others provide information about the content which has been added.

HTML documents can be imported using different HTML engines. The current supported ones are the MSHTML engine (used in Microsoft Internet Explorer) and a modified version of Mozilla Firefox's Gecko engine tailored to work with ABCpdf. Different engines interpret HTML documents in different ways and support a different set of HTML options, please see the [Engine](2-properties/1-engine.md) property for details.

```
System.Object
    WebSupergoo.ABCpdf14.XHtmlOptions
```

## Methods

| Method | Description |
| --- | --- |
| [EndTasks](1-methods/endtasks.md) | Ends any HTML Engine worker threads or processes. |
| [GetHttpStatusCode](1-methods/gethttpstatuscode.md) | Retrieves the HTTP status code. |
| [GetScriptReturn](1-methods/getscriptreturn.md) | Retrieves the client side onload script return value. |
| [GetTagIDs](1-methods/gettagids.md) | Gets an array of the HTML IDs of tagged visible items. |
| [GetTagRects](1-methods/gettagrects.md) | Gets an array of the locations of tagged visible items. |
| [GetTagUntransformedRects](1-methods/gettaguntransformedrects.md) | Gets an array of the locations of tagged visible items before Doc.Transform is applied. |
| [LinkDestinations](1-methods/linkdestinations.md) | Convert a restricted selection of external links to internal links. |
| [LinkPages](1-methods/linkpages.md) | Convert external links to internal links wherever possible. |
| [PageCacheClear](1-methods/pagecacheclear.md) | Clears the HTML page cache. |
| [PageCachePurge](1-methods/pagecachepurge.md) | Purges the HTML page cache. |
| [SetTheme](1-methods/settheme.md) | Specify whether to use Windows themes or not. |

## Properties

| Property | Description |
| --- | --- |
| [Engine](2-properties/1-engine.md) | The engine to use for HTML import operations. |
| [ForChrome](2-properties/2-forchrome.md) | An object that provides access to only the HTML options supported by the ABCChrome engine. |
| [ForMSHtml](2-properties/2-formshtml.md) | An object that provides access to only the HTML options supported by the MSHTML engine. |
| [ForGecko](2-properties/2-forgecko.md) | An object that provides access to only the HTML options supported by the ABCGecko HTML engine. |
| [ForWebKit](2-properties/2-forwebkit.md) | An object that provides access to only the HTML options supported by the ABCWebKit engine. |
| [AddForms](2-properties/addforms.md) | Whether form fields should be live. |
| [AddLinks](2-properties/addlinks.md) | Whether hyperlinks should be live. |
| [AddMovies](2-properties/addmovies.md) | Whether active content such as movies should be added. |
| [AddTags](2-properties/addtags.md) | Whether location of certain tags should be noted. |
| [AddIDs](2-properties/addids.md) | Whether HTML ID attributes should be tracked. |
| [AddNames](2-properties/addnames.md) | Whether HTML name attributes should be tracked. |
| [AdjustLayout](2-properties/adjustlayout.md) | Whether HTML layout is checked and adjusted for optimal output to PDF. |
| [AllowedSchemes](2-properties/allowedschemes.md) | The URL schemes which may be used for the page URL and the BaseURI. |
| [AutoTruncate](2-properties/autotruncate.md) | Whether to automatically clip redundant content at the end of the page. |
| [BaseURI](2-properties/baseuri.md) | The base URL to use for all relative URLs in the page. |
| [BreakMethod](2-properties/breakmethod.md) | The page break logic for HTML. |
| [BreakZoneSize](2-properties/breakzonesize.md) | The percentage of the current drawing area in which HTML breaks can occur. |
| [BrowserWidth](2-properties/browserwidth.md) | The width of the virtual browser in pixels. |
| [CoerceVector](2-properties/coercevector.md) | The conditions under which to coerce a vector output. |
| [CommandOptions](2-properties/commandoptions.md) | A set of command options for the HTML engine. |
| [ContentCount](2-properties/contentcount.md) | The minimum number of content items required for a page to be valid. |
| [DeactivateWebBrowser](2-properties/deactivatewebbrowser.md) | Whether to deactivate the WebBrowser. |
| ⚠ [DisableVectorCoercion](2-properties/disablevectorcoercion.md) | The conditions under which to disable vector-output coercion. |
| [DoMarkup](2-properties/domarkup.md) | Whether HTML pages are marked up before conversion to PDF. |
| [FireShield](2-properties/fireshield.md) | The FireShield security settings to be applied to the ABCChrome engine. |
| [FontEmbed](2-properties/fontembed.md) | Whether fonts should be embedded rather than referenced. |
| [FontProtection](2-properties/fontprotection.md) | Whether fonts should be protected. |
| [FontSubset](2-properties/fontsubset.md) | Whether embedded fonts should be subsetted or not. |
| [FontSubstitute](2-properties/fontsubstitute.md) | Whether font substitution should be used to reduce file size. |
| [HideBackground](2-properties/hidebackground.md) | Whether to hide the background color of a page. |
| [HostWebBrowser](2-properties/hostwebbrowser.md) | Whether to host a WebBrowser control. |
| [HtmlCallback](2-properties/htmlcallback.md) | The multicast delegate to be called while HTML rendering is taking place. |
| [HtmlEmbedCallback](2-properties/htmlembedcallback.md) | The multicast delegate to be called when embedding an object while HTML rendering is taking place. |
| [HttpAdditionalHeaders](2-properties/httpadditionalheaders.md) | Additional HTTP headers to send in the request. |
| [IgnoreCertificateErrors](2-properties/ignorecertificateerrors.md) | Whether to ignore certificate-related errors. |
| [ImageQuality](2-properties/imagequality.md) | The quality of compression acceptable for continuous tone images such as JPEGs. |
| [ImprovePageBreakAvoid](2-properties/improvepagebreakavoid.md) | Whether to improve the support for page-break-inside of avoid. |
| [ImprovePageBreakInTable](2-properties/improvepagebreakintable.md) | Whether to improve the support for page break in table to prevent missing rows. |
| [InitialWidth](2-properties/initialwidth.md) | The minimum width to be used for auto-sized pages. |
| [LogonName](2-properties/logonname.md) | A user name to be used for authentication. |
| [LogonPassword](2-properties/logonpassword.md) | A password to be used for authentication. |
| [MakeFieldNamesUnique](2-properties/makefieldnamesunique.md) | Whether field names should be changed to make them unique. |
| [MaxAtomicImageSize](2-properties/maxatomicimagesize.md) | The maximum size at which an image may be regarded as unbreakable. |
| [Media](2-properties/media.md) | The CSS media type to use. |
| [NoCookie](2-properties/nocookie.md) | Whether to disable automatic cookies. |
| [NoDefaultBackground](2-properties/nodefaultbackground.md) | Whether to disable the default background color. |
| [NoSnapRounding](2-properties/nosnaprounding.md) | Whether to disable the snap rounding of coordinates and lengths. |
| [NoTheme](2-properties/notheme.md) | Whether themes should be disabled. |
| [OnLoadScript](2-properties/onloadscript.md) | A script to be run after the page is loaded. |
| [PageCacheEnabled](2-properties/pagecacheenabled.md) | Whether the page cache should be searched before rendering the page. |
| [PageCacheExpiry](2-properties/pagecacheexpiry.md) | The length of time that pages can be held in the cache (ms). |
| [PageCacheSize](2-properties/pagecachesize.md) | The number of pages that can be held in the cache. |
| [Paged](2-properties/paged.md) | Whether content should be rendered in multipaged format. |
| [PageLoadMethod](2-properties/pageloadmethod.md) | The method for loading URI/HTML. |
| [ProcessOptions](2-properties/processoptions.md) | The options for new worker processes. |
| [ReloadPage](2-properties/reloadpage.md) | Whether to reload page. |
| [RepaintDelay](2-properties/repaintdelay.md) | Minimum time to wait for the page to finish animation (ms). |
| [RepaintTimeout](2-properties/repainttimeout.md) | Maximum time to wait for the page to finish animation (ms). |
| [RequestMethod](2-properties/requestmethod.md) | The request method for URL. |
| [RetryCount](2-properties/retrycount.md) | The number of times a page should be retried if unavailable or invalid. |
| [TargetLinks](2-properties/targetlinks.md) | Whether hyperlinks should be allowed to open new windows. |
| [Timeout](2-properties/timeout.md) | The maximum amount of time allowed for obtaining a page (ms). |
| [TransferModule](2-properties/transfermodule.md) | The module for obtaining URI/HTML data. |
| [UseActiveX](2-properties/useactivex.md) | Whether to enable ActiveX. |
| [UseJava](2-properties/usejava.md) | Whether to enable Java. |
| [UseNoCache](2-properties/usenocache.md) | Whether any proxy servers should re-request items of content. |
| [UserAgent](2-properties/useragent.md) | The user-agent string. |
| [UseResync](2-properties/useresync.md) | Whether to resynchronize pages. |
| [UseProxyServer](2-properties/useproxyserver.md) | Whether to use a proxy server. |
| [UseScript](2-properties/usescript.md) | Whether to enable JavaScript and VBScript. |
| [UseTheme](2-properties/usetheme.md) | Whether to use themes. |
| [UseVideo](2-properties/usevideo.md) | Whether to enable Video. |
