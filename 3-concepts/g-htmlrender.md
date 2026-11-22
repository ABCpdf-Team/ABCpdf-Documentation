# HTML / CSS Rendering

## Intro

Converting HTML to PDF: how ABCpdf renders HTML and CSS.

ABCpdf fully supports HTML and CSS.

You can render individual pages of HTML using the [AddImageUrl](../5-abcpdf/doc/1-methods/addimageurl.md) method.

You can page HTML over multiple PDF pages using the AddImageUrl method in combination with the [AddImageToChain](../5-abcpdf/doc/1-methods/addimagetochain.md) method.

ABCpdf allows you to treat HTML like any other media so you can even page your HTML across multiple columns of multiple pages of your PDF.

## Method

ABCpdf can use the Chromium engine (as used in Google Chrome), the MSHTML engine (as used in Microsoft Internet Explorer) or the ABCGecko engine (as used in Mozilla Firefox) to parse and preprocess the HTML for insertion into your PDF. To switch between them, simply change the [XHtmlOptions.Engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md) property. It's only one line of code.

The use of sandboxed web browsers provides an extremely accurate rendition of the HTML. However due to the differences in behavior and capabilities of the underlying rendering engine, you should expect some differences in behavior and output when switching between them.

Using Chrome in print preview, you should see something similar to the output you get using the ABCChrome engine. As in print preview, we default to print rather than screen media stylesheets. The view you see of your HTML using the IE version on the machine should be pretty similar to the MSHTML engine on that same machine. Printout from the QtWeb browser should be very similar to the output produced by the ABCWebKit engine. None will be exactly the same because PDF is different from HTML and some things need to be represented slightly differently. However any differences should be subtle.

The ABCChrome engine is typically about three times as fast as the MSHTML engine, which itself typically about twice the speed of ABCGecko. However this does depend heavily on the type of input. For some inputs we have seen the ABCGecko engine five times the speed of the MSHTML one. The ABCChrome and Gecko engines have a fairly large startup overhead so if you are testing for speed you should be careful to discount the first conversion.

In terms of commonly requested features, the ABCChrome and Gecko engines support repeated table headers and footers, SVG, and are pretty good on AJAX for charts and maps. The MSHTML engine tends to provide a more literal screen based output. ABCChrome and ABCGecko generally support HTML5 specific features better than MSHTML. ABCChrome supports web fonts while the other two engines do not.

You should be expecting that there are differences in PDF representation between the engines and in particular the decision to reference or embed fonts can be quite different. File sizes are likely to be noticeably but not startlingly different. The MSHTML tends to produce the largest outputs, followed by ABCGecko and with ABCChrome producing the smallest files.

The ABCWebKit engine is a specialist engine which is not suitable in most situations. Yes - not suitable. However because it has limited OS dependencies it can often operate in environments like Azure which are stripped down versions of Windows. This flexibility comes at considerable cost in terms of capability and security so you should only enable this engine if you are fully cognizant of the implications. You can read more about this at the [Engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md) page.

Please refer to [Engine](../5-abcpdf/xhtmloptions/2-properties/1-engine.md), [ForChrome](../5-abcpdf/xhtmloptions/2-properties/2-forchrome.md), [ForMSHtml](../5-abcpdf/xhtmloptions/2-properties/2-formshtml.md), [ForGecko](../5-abcpdf/xhtmloptions/2-properties/2-forgecko.md) and [ForWebKit](../5-abcpdf/xhtmloptions/2-properties/2-forwebkit.md) for further elaborations on the engines' distinct characteristics.

## Cache

The MSHTML rendering engine holds a cache of recently requested URLs and it's only after five minutes or so that these pages expire from the cache.

This results in a considerable degree of optimization for many common operations. However, if you wish to bypass the cache, you can do so by setting the DisableCache parameter to true when you call AddImageUrl or AddImageHtml.

Occasionally, you may find that your page is being cached elsewhere. There are all kinds of places this can happen. For example, Windows sometimes caches individual page resources. Proxy servers may cache entire pages.

The standard reason that content gets cached is that pages are sending HTTP header information which indicates that it is acceptable to cache this content. If you are using the Internet Explorer HTML engine, sometimes it will insist to cache certain Web pages. In that case, your first step should be to use a tool like IEWatch to view the content expiration headers. Indeed, you may find that simply adjusting the content expiration settings found in the IIS Management Console will resolve the issue.

If you want to be totally sure that your URLs are rendered afresh each time, you need to vary the URL. For example:

http://www.microsoft.com/?dummy=1  
http://www.microsoft.com/?dummy=2  
http://www.microsoft.com/?dummy=3

These will all render the same page (www.microsoft.com) but because the URL is varying, you can be sure that they will be rendered afresh each time.

## Speed

Obvious things will impact the speed of HTML conversion. So if you want to optimize the process look at retrieval times for your http requests, the size of your HTML and any related resources, the complexity of HTML, the speed of your computer. Tweaking these can make a big difference.

However there are also some small and simple things you may be able to do without getting into the complexity of system wide optimization.

The MSHTML rendering engine is, by default, set up for accuracy and quality. In order to ensure that the output is always good we have to enable every setting that might ever affect the output quality. This is the case even for situations in which you are not using those features.

So if your HTML does not contain features which require these settings then you can disable them. Doing so can result in significant speed improvements.

The setting which typically makes the biggest difference is HostWebBrowser but DoMarkup and AdjustLayout are also worth looking at. The actual speed increases depend very much on the input HTML, but in our tests, disabling these features for simple HTML, increased the speed of processing by about 30% for HostWebBrowser, another 10% for the DoMarkup property and another 7% for the AdjustLayout property.

Another property which needs examination is the UseScript one. As long as your JavaScript is good and sensible then there is no problem. However JavaScript is often coded poorly and as such it may have an unpredictable effect on speed. Consider disabling this feature if you do not actively need it.

Setting the BrowserWidth to a predefined value means that ABCpdf does not have to compute one. This can result in an increase of speed or perhaps 10% or so.

By default the ABCpdf MSHTML engine operates a two stage process for obtaining web pages. It starts with the most efficient method (EngineTransfer) and, in the event that security prohibits this, falls back to a less demanding but slower method (NetWebRequest). If you are operating in a restricted permission environment such as ASP.NET you are unlikely to notice this fallback and thus the potential speed impact. By setting the TransferModule to EngineTransfer you can force ABCpdf to use the faster method and if permissions prohibit this then an error will be raised. At that point you can tackle the permissions issue to ensure that the faster method is used. See the [TransferModule](../5-abcpdf/xhtmloptions/2-properties/transfermodule.md) property for details.

## Caveats

You can render any page you can supply a URL for.

When you render a page the page has to be reloaded by ABCpdf. This is because you - as a client - are looking at the page from your current machine. ABCpdf lives on the server and so it exists in a different session.

So, you cannot generally rely on cookies, session state or form submission in your page. The page must be reliant only on the URL you supply.

If you have to rely on session state, you could use cookie-less sessions (which will give you a URL for your session) or you could save the session information under a specific unique ID then pass the ID via the URL and pick up the information via your server-side code.

Problems which appear to be related to SSL or HTTPS connections are often authentication issues simply solved by providing open access for connections from the calling machine. If that is not convenient then, for situations in which the HTTPS resource is on the same machine as ABCpdf, it is often possible to access the files directly using a 'file://' protocol URL - bypassing SSL issues can be simpler than solving them. In addition, people often tweak security without considering the consequences, so if you have to solve an SSL problem there is always the possibility that someone might unsolve the problem in the future. Please also see the WebPageSnapshot example project which provides another approach to preserving authentication and session state.

## Size

Screen resolution is typically 96 DPI. So, when you view an HTML page on your monitor, Windows will display it at 96 DPI.

The disparity between the screen resolution and the PDF 72 DPI resolution means that HTML appears larger in print documents than it does on screen.

You will need to apply a scale of 72/96 (0.75) to compensate for this if you want both to appear the same size.

For example, if you are rendering a web page supplying a value of 800 for the Width parameter, you will need to set the width of your Rect to 600 if you want both to appear the same size.

When you do calculations bear in mind that pixels are integral and some adjustments may need to be made if you round values off. For example if you have a PDF rect width of 320 and you set the Width parameter to 320/0.75 you will get a value of 426.667. Pixel values have to be integral so you round it to an int which means it is going to be 426 which equates to a PDF rect width of 319.5. These are small differences but if you wish sizes to match up exactly, you need to adjust your PDF rect to be exactly the right size for the number of pixels.

## DPI

PDF documents are predominantly vector based. As such, they do not really have a DPI because they are resolution independent. The only portions of PDFs which are raster based are images.

Most elements of HTML - text, lines - are vector based. So, they are resolution independent.

The resolution at which images in your web pages are rendered is complicated. Suppose you have a 300 square image referenced by an image tag. If the width of your Doc.Rect is the same as the width you pass to AddImageUrl, this will be rendered at 72 DPI. However, by changing the ratios between these two values, the image will be scaled and hence the resolution will be changed.

And... if your 300 square is in an img tag with a width and height of 150, the default resolution will be doubled.

## Breaks

ABCpdf uses a sophisticated set of heuristics to determine where to break pages. For greater control over page breaking, you can use the page-break-before, page-break-after and page-break-inside CSS styles.

You should ensure that the element to which you apply your page breaking style is visible. This is not always required for all engines but it is a sensible thing to do and it makes output predictable. For example:

```
<div style="page-break-before:always"> </div>
```

... will break but ...

```
<div style="page-break-before:always"></div>
```

... may not.

> **Useful Tip.** Debugging page break styles.
>
> Sometimes, your page breaks do not work in the way you think they should. Because these kinds of tags are invisible, it's very difficult for you to know whether you've applied them correctly or not. One simple solution is to debug your HTML using a visible style.
>
> For example, when you apply your "page-break-inside: avoid" style, apply a right border style at the same time. That way, you can see exactly where your elements are. If the borders do not appear in the right places, then you know there's something wrong with your HTML.

## Snapshot

You may wish to take a snapshot of the current URL.

In many circumstances, you should be able to derive a URL for the current page using the value of the SERVER_NAME, URL and QUERY_STRING Server Variables. You should be able to derive a URL for the previous page using the HTTP_REFERER (sic) Server Variable.

Alternatively, you can obtain the HTML of the current page using the HttpResponse.Filter property or by overriding the Render method of the page. You can then present this HTML to ABCpdf using AddImageHtml. If your HTML references resources using relative references, you may wish to insert a \<BASE> tag into the HTML before presentation to ABCpdf. If your server is serving one site and you are rendering a URL on it, something as simple as \<BASE HREF="http://localhost/"> is often all you need.

When you perform this kind of operation, be careful not to recursively call ABCpdf. If you do this, you will get into a hall-of-mirrors type situation and the software will not be able to return you a sensible image.

## Maturity

ABCpdf is a mature product and we support multiple HTML engines.

We have to support all these engines because many of our clients rely on them in their older systems. However that does not mean it is a good idea for you to use older engines. In your newer developments you should favor the current engines, not the ones that were current ten years ago.

Engines that are not undergoing regular updates are going to be less secure, less performant and less compatible than newer ones. We recommend the use of the ABCChrome146 engine as this is current and up to date.

The other older engines are not part of our main NuGet package. Instead you need the full MSI installer or you need to reference subsidiary NuGet packages. This is for good reasons, related to security, performance and compatibility.

The MSHTML engine is based on IE technologies which date back to 2013. While it has a surprisingly long end of life date, it has not been a focus of attention from Microsoft for many years. The ABCWebKit engine dates back to 2012 and while it can be useful in some situations, it certainly could not be regarded as modern. The ABCGecko engine is based around FireFox 38 which was released in 2015.

## Security

If you are working with trusted web pages or HTML - your web pages and your HTML - then there is little to worry about in terms of security.

However if you allow untrusted clients to provide you with web URLs or raw HTML then you need to consider if a malicious user could leverage specially crafted pages, to create effects you had not considered. The core ways in which this may happen are related to redirection, embedded iframes and base tags. JavaScript can also be exploited in ingenious ways to reveal information about your server. Tracker or spy pixels may be used to identify content and pass information in ways you do not want.

For example, you might not consider it important that you can view a web site which tells you your IP address and location. However if you allow a user to create a PDF of this web site then it will reveal the IP address and location of the server that has generated the document. While perhaps this might not be a problem, it is possible that an someone might find a way to access other apparently innocuous information in a way that could ultimately be exploited.

Suppose your server has access to an internal intranet. An attacker knows about URLs on this intranet but cannot access them. However if you allow them to pass a URL for conversion into a PDF, then they can specify one of these internal URLs and get back a PDF of the web pages.

So the core principle here is - do not pass untrusted URLs or HTML to ABCpdf.

The [AllowedSchemes](https://www.websupergoo.com/helppdfnet/source/5-abcpdf/xhtmloptions/2-properties/allowedschemes.htm) property limits the URL schemes which may be used for the page URL and the BaseURI. If you do accept URLs from other people, narrowing it - for example to "https" only - stops them using other schemes such as file. It does not stop http or https URLs from reaching addresses on your internal network.

In previous versions of ABCpdf, JavaScript was disabled by default and had to be manually enabled. However JavaScript has become critical to the display of most sites and From Version 11 onwards, it is enabled by default. See the HtmlOptions.UseScript property for details.

Each web engine operates inside a sandbox which limits the access that web pages have. However the extent to which the web pages are limited, is largely determined by where they are and what they wish to access. In general web pages are tied into the local site from which they come. So any attempt to move outside this location will normally be denied. You can read more about this on the web by searching for details of the same-origin policy and how it is used to prevent cross-site scripting.

Redirection is much more relevant when JavaScript is enabled as this is the primary mechanism by which it is accomplished. There are other mechanisms such as meta-refresh tags, but they are uncommon and fragile. If you pass a URL to ABCpdf, it cannot tell the difference between intended redirection and malicious redirection. So it is important to ensure that the types of redirection that are allowed is controlled.

Base tags are similar but do not use JavaScript - they allow a web page in one location to reference resources in another. Most typically this is used to allow page on one site to reference images or style sheets on a different web site. Obviously to strictly enforce a same-origin policy here would rather defeat the concept of the base tag. However there are security measures in place to limit the extent to which they can be manipulated.

The main thing to consider is that the origin of files on the local machine is the local machine. So, while the origin of web pages strictly controls the access they can have, the origin of files inherently limits the level of control that is possible. Allowing untrusted users to provide web page URLs provides limited exposure. Allowing them to provide files to be passed directly to AddImageUrl via a 'file:///' protocol URL, provides much more exposure.

As an alternative, if you have files containing HTML, read the content and pass it in via the AddImageHtml method. Both the ABCChrome and (to a lesser extent) the Gecko engines have barriers in place to limit the access of web pages which are provided this way. The origin of the HTML is not the local machine and a higher level of defense is automatically in place. However it may also mean that images on your local machine, referenced in your HTML, will not be able to be loaded. See table below for details.

The ABCChrome and ABCWebKit FireShield settings allow you to specify dynamic permissions associated with file access. If you need to work with files on the local machine, this is an excellent way of ensuring that the HTML render process has access only to those files that it requires. However this is a feature specific to the ABCChrome and ABCWebKit engines. It does not exist for the ABCGecko or MSHTML engines.

The file permissions associated with a web server process, provide yet another layer of defense. But while a sequence of defensive layers may provide protection it is quite difficult to know the extent to which they will work in the face of a determined adversary. It is best not to provide untrusted users with mechanisms to allow them to insert unvetted HTML or JavaScript in the first place.

There are some variations between engines and what they allow. See below for details. Note that while engines should be completely consistent here, it is our experience that this is not always the case so you may not want to rely on these permissions as absolutes.

|  | ABCChrome | ABCGecko | Mshtml |
| --- | :---: | :---: | :---: |
| Redirection from one page to another within the current web site | Allowed | Allowed | Allowed |
| Redirection from a page on one web site to a page on a different one | Denied | Denied | Denied |
| Redirection from a page on a web site to a local file | Denied | Denied | Denied |
| Redirection from one local file to another local file | Allowed | Allowed | Allowed |
| Redirection from a local file to a page on a web site | Denied | Allowed | Denied |
| Base tag in a local file referencing resources in a local directory | Allowed | Allowed | Allowed |
| Base tag in a local file referencing resources on a remote web site | Allowed | Allowed | Allowed |
| Base tag in a page on a remote web site referencing resources in a local directory | Denied | Denied | Allowed |
| Image in a local directory, referenced in HTML, provided via AddImageHtml method. | Denied | Denied | Allowed |
| Image in a local directory, referenced in HTML, provided via AddImageUrl and a 'file:///' scheme URL. | Allowed\* | Denied | Allowed |

\* If you enable the FireShield engine, the default rules will deny access. Access can be re-enabled by adding FireShield rules to explicitly allow it.
