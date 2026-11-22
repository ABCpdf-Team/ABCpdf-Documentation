# Engine Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `EngineType` | Chrome146 | No | The engine to use for HTML import operations. |

## Notes

This property specifies the HTML engine to use when importing HTML pages.

The EngineType enumeration can take any of the following values:

- Chrome146 (recommended; included in the ABCpdf NuGet package for Windows)
- Chrome123 (available in the MSI installer and as a separate NuGet package)
- Chrome117 (available in the MSI installer and as a separate NuGet package)
- Chrome86 (available in the MSI installer and as a separate NuGet package)
- Chrome65 (available in the MSI installer and as a separate NuGet package)
- Gecko (available in the MSI installer and as a separate NuGet package)
- WebKit (available in the MSI installer and as a separate NuGet package)
- MSHtml (part of the Windows OS)

For new work use Chrome146. The other engines are there so existing code keeps working and keeps producing the same output:

- **Chrome123 and Chrome117** are recent legacy engines. They are reliable choices for existing code, but plan to move to Chrome146.
- **Gecko, Chrome86, Chrome65, WebKit and MSHtml** are older legacy engines, for existing code or the particular needs described below.

Each HTML engine supports a different subset of HtmlOptions methods and properties. You can use one of the filter objects: [ForChrome](2-forchrome.md), [ForGecko](2-forgecko.md), [ForWebKit](2-forwebkit.md) and [ForMSHtml](2-formshtml.md) to filter the supported options in your IDE.

****Characteristics of the ABCChrome Engines:****

- Chrome146, Chrome123 and Chrome117 require Windows Server 2016 / Windows 10 or later and at minimum an Intel Pentium 4 supporting SSE3.
- Earlier ABCChrome versions require Windows 2008 R2 / Windows 7 or later.
- The engine is x64 only.
- The engine is an independent component. It will not be affected even if you upgrade your Internet Explorer or local Chrome installation.
- It is generally faster than the other engines, producing smaller PDFs.
- It supports a wide range of the HTML5 and CSS3 standards.
- It supports the majority of the SVG Full profile.
- It supports web fonts, Font Awesome and similar dynamic font technologies.
- Fonts are always embedded and are never substituted.
- It supports dynamic and AJAX pages including content like animated graphs and maps.
- It supports increased security via a variety of technologies including FireShield.
- It is better at handling very large web pages or chunks of HTML.
- You can specify print or screen style sheets through the use of the [Media](media.md) property.
- In large tables that span across pages, table headers and footers are repeated across pages. The ABCGecko engine handles complex nested headers and footers better, but most pages are not that complex.
- The rendered HTML will always fill the entire current rectangle. After the initial call to [Doc.AddImageUrl](../../doc/1-methods/addimageurl.md) or [Doc.AddImageHtml](../../doc/1-methods/addimagehtml.md), the page height will be fixed at that point. Subsequent pages rendered using [Doc.AddImageToChain](../../doc/1-methods/addimagetochain.md) will be automatically scaled (instead of having the contents reflowed) to fit in the current rectangle.
- ActiveX components are not supported.
- The [Paged](paged.md) property is always assumed to be true.
- It does not check for blank pages and does not throw blank page exceptions.
- It does not support Flash movies.

The default ABCChrome representation involves an overhead of about 120 bytes per page. In most situations this is irrelevant but for documents with large numbers of pages, you may wish to eliminate it by calling Page.StampFormXObjects(true) for each page in the document.

Similarly, while font embedding is generally a good idea, it does slightly increase the size of the output. A typical overhead is in the region of 50KB per document, so in most cases this is a tiny part of a much bigger whole. However if you are dealing with very small documents of only a few KB in size, it can become significant. If this is the case you can use the [ReduceSizeOperation](../../../8-abcpdf.operations/b-reducesizeoperation/index.md) or [FontUnembedment](../../../4-projects/fontunembedment/index.md) project to remove fonts which have been embedded.

ABCpdf Version 11.0 shipped with ABCChrome 59. Version 11.2 ships with ABCChrome 65. Version 12.0 ships with ABCChrome 86. Version 13.0 ships with ABCChrome 117. Version 13.1 ships with ABCChrome 123.

The core improvements in 65 relates to better handling of repeated headers and footers in tables using the thead and tfoot tags. The way that transparent images are displayed is much improved. There have been minor improvements in text kerning and layout - you should note that these can lead to subtly different line breaking. JavaScript redirects between local files (ie 'file://' protocol URLs) on your machine have been disabled for security reasons.

ABCChrome 86 introduces a raft of security measures designed to make your development more secure. However this improvement did come at some cost in terms of speed.

ABCChrome 117 & 123 are notable in that they are much faster than ABCChrome 86. In our local HTML tests they typically come in twice as fast: a significant improvement over both ABCChrome 86 and ABCChrome 65.

**Characteristics of the ABCGecko Engine:**

> **Important Note.** The ABCGecko engine is based on Firefox 38 technology from 2015. It is kept for existing code, and for the few things it handles better than ABCChrome: complex nested table headers and footers that repeat across pages, and XML with XSLT or MathML. For new work use ABCChrome.

- The ABCGecko engine is a component independent of other parts of the Operating System. It will not be affected even if you upgrade your Internet Explorer or another local Firefox installation.
- It supports a wide range of the HTML5 and CSS3 standards.
- It supports the majority of the SVG Full profile. SVG graphics embedded inside Web pages convert natively to PDF primitives. Alternatively, you can specify an SVG file's location in [Doc.AddImageUrl](../../doc/1-methods/addimageurl.md) or provide a string of SVG contents to [Doc.AddImageHtml](../../doc/1-methods/addimagehtml.md) to have it converted to PDF using the Gecko engine.
- It supports XML pages with XSLT and MathML.
- You can specify which set of style sheets to use (Print/Screen) through the use of the [Media](media.md) property.
- In large tables that span across pages, thead and tfoot elements are repeated across different pages properly.
- The rendered HTML will always fill the entire current rectangle. After the initial call to [Doc.AddImageUrl](../../doc/1-methods/addimageurl.md) or [Doc.AddImageHtml](../../doc/1-methods/addimagehtml.md), the page height will be fixed at that point. Subsequent pages rendered using [Doc.AddImageToChain](../../doc/1-methods/addimagetochain.md) will be automatically *scaled* (instead of having the contents reflowed) to fit in the current rectangle as much as possible.
- ActiveX components are not supported.
- The [Paged](paged.md) property is always assumed to be true.
- The Gecko engine does not use Page caching. This means that your rendered PDF is never stored in a memory cache.
- On the other hand, Web caching is used to store contents downloaded over the Internet and is configurable using the [UseNoCache](usenocache.md) property.
- JavaScript in [OnLoadScript](onloadscript.md) cannot directly modify the document object. For example, document.write("hello world"); would not work. Most of the time, you can work around to get your desired effect by indirectly modifying elements on the page, such as document.body.innerHTML = "hello world";
- The use of [OnLoadScript](onloadscript.md) does not require [UseScript](usescript.md). You are free to use JavaScript to customize the page without allowing JavaScript execution in the HTML.

The page break styles in the Gecko engine are not always applied as intuitively as they are in MSHTML. The root of this is the CSS specification which says that break styles must be applicable to block-level elements within the "normal flow of the root element". It allows for these styles to be applied to other elements but does not mandate it.

The upshot of this, within the Gecko engine, is that page break styles cannot be applied within tables, to elements such as table rows. If you are unsure about whether something is likely to work just try Print Preview from within Firefox 38.0 as a simple sanity check.

Gecko configuration...

The ABCGecko engine contains a number of preferences that can be configured. There are a set of .js files in the "XULRunner??\_?\\defaults\\pref" folder that are loaded in alphabetical order when it starts. Each file contains a set of preferences. So by adding your own .js file to this folder, you can add in your own settings.

If you are not familiar with the format of these files, you may find it easier to copy a configuration file from Firefox:

- View the URI "about:config" in Firefox.
- Modify the configuration as usual.
- Close Firefox. The configuration is saved to the file only when Firefox is completely closed.
- See the Path value in %APPDATA\\Mozilla\\Firefox\\profile.ini. For example, the value may be Profiles/sx4fgjw2.default.
- Copy prefs.js in the folder pointed to by the Path value (relative to the path of profile.ini) to:
  - XULRunner??\_?\\defaults\\pref. The preferences are considered to be set by the **software developer**. For example, copy C:\\Users\\\<user>\\AppData\\Roaming\\Mozilla\\Firefox\\Profiles\\sx4fgjw2.default\\prefs.js to XULRunner??\_?\\defaults\\pref.
  - some place outside of XULRunner??\_? and set the file path (including the file name) to the [GeckoPrefFile](../../../3-concepts/d-registrykeys.md) registry value. The preferences are considered to be set by the **end user**. See below for the differences between preferences set by the end user and those set by the software developer.
- Do not delete or change the first line in prefs.js. You need only the lines relevant for your configuration change. You can delete other irrelevant lines.

Preferences set by the **end user** are in the JavaScript file whose path is assigned to the [GeckoPrefFile](../../../3-concepts/d-registrykeys.md) registry value. (Registry values can alternatively be specified in [web.config or app.config](../../xsettings/1-methods/setconfigsection.md).) The file is loaded after all JavaScript files in "XULRunner??\_?\\defaults\\pref", so user-set preferences take precedence. Some preferences are in effect only when set by the end user. Here is an incomplete list of such preferences:

| Preference in effect only if it is set by the end user | Default Value | Description |
| :---: | --- | --- |
| intl.accept_languages | "en-US, en" | The order of languages of the fonts to search when the specified font does not support a character. The Gecko engine appends to the list the ones that are missing in the following in order ja, ko, zh-CN, zh-HK, zh-TW. For example, without specifying this preference, a piece of simplified Chinese text (in a Latin font) may be imported in multiple fonts because some characters are supported by Japanese fonts and some are not. |

Additional supported settings:

| Preference | Default Value |
| :---: | --- |
| print.print_shrink_to_fit | true |
| print.print_scaling | "1" |

**Characteristics of the ABCWebKit Engine**

> **Important Note.** The ABCWebKit engine should only be used in very special situations. Read carefully and enable this engine at your own risk.
>
> The LGPL under which this module is released requires that you be able to swap different versions in and out and that means that we cannot necessarily ensure that the module you have is even the one you think it is. We sign the engine and check the signature but if you disable this feature to allow use of a different version then you also disable large amounts of security.
>
> For example we have added [FireShield™](fireshield.md) security to the default ABCWebKit engine. It is strongly recommended that you set the FireShield policy to Deny or Mask and add minimal allowable paths to the [FireShield rules](../../xhtmlfireshield.rule/index.md). Without FireShield, ABCWebKit is outside the sandbox so any malicious code it might contain is contained within the security environment for the spawned process - but no more than that. FireShield is only loaded if the [Policy](../../xhtmlfireshield/2-properties/01-policy.md) is not None and if there are rules to apply.
>
> The ABCWebKit engine is based on technology from 2012. It does not support modern HTML correctly and it contains known security flaws. It is only really suitable for use if you have complete control over the inputs you provide to it. Under no circumstances should you allow untrusted URLs or HTML to be provided to this engine. While FireShield provides a good level of defense relating to file access, innovative attackers can find ways to use your machines even if they do not have access to the file system.
>
> You can read more about this here: [https://wkhtmltopdf.org/](https://wkhtmltopdf.org/)

The ABCWebKit engine, first shipped with ABCpdf 12.1, is by no means as full featured or secure as the other engines. However it is much less dependent on the OS and as a result it can often operate on stripped down systems such as those used in Azure. The characteristics are

- It will run as an App Service on Azure (it is 64-bit so B1 and higher).
- Security is low to non-existent so you must have complete control over your input HTML or URLs.
- It is based on Qt 4 which ended support in 2015. WebKit itself was last updated in 2012.
- HTML support is fragile in the face of real world or modern HTML.
- Technologies outside of HTML - web fonts, charts, maps etc - are unlikely to work.
- Screen and print media types work only for simple queries.
- Repeated headers and footers in tables work only for simple structures.
- Errors are often manifested as blank output rather than exceptions.

This engine is based on WkHtmlToPdf which in turn is based on QtWebKit API. So if you do get unexpected output you may wish to check how the HTML renders in the [Qt Web Browser](http://www.qtweb.net/).

If you should wish to use your own custom wkhtmltopdf engine with ABCpdf you will need to change the value for ABCWebKitDisableFileCheck.

For unusual fonts you can often use an SVG version of the font instead. However because these are SVG rather than "real" fonts it is not possible to search or copy and paste. You can make SVG fonts on sites like https://transfonter.org/.

While ABCWebKit will work on Azure, you should note that Azure provides a rather stripped down OS notably light on resources like fonts. Security may be locked down tightly which may stop you using features like FireShield. For these reasons, the behavior and output you get on your local machine may be different from that you get on your Azure platform.

**Characteristics of the MSHtml Engine**

> **Important Note.** The MSHtml engine is only supported for backwards compatibility. Read carefully before enabling this engine.
>
> There is no sandboxing and little security for this engine because it runs in-process. Behavior is reasonably safe because the core technologies are installed on your machine by Microsoft. However because they are installed by Microsoft they may vary between machines.
>
> The engine is based on Internet Explorer components that come with Windows. The lifecycle policy from Microsoft is that these form part of the OS and thus if your OS is supported then your IE installation is supported. You need IE 9 at minimum.
>
> However the last version of IE was released in 2012 and the Microsoft policy is to move forward with Microsoft Edge rather than Internet Explorer. So you need to be realistic about how much effort Microsoft is going to put into these components.

- The Screen style sheets are used during the rendering process.
- Page heights can vary across different pages. Segments of the HTML document are composed dynamically to fit the target rectangle as accurately as possible during each call to [Doc.AddImageToChain](../../doc/1-methods/addimagetochain.md). This means the target rectangle will be filled with more contents for larger target rectangles instead of scaled to fit.
- For definite control of HTTP requests, you should set [TransferModule](transfermodule.md) to a non-default value.
- The Doc.Rect can be zero width or height to allow the page to auto-size.

Internet Explorer configuration...

The Fusion Log Viewer is known to interfere with the initialization of the MSHtml engine. If any problem arises, try disabling it or specify a local custom log path.

Currently, there are some limitations when using the MSHtml engine hosted out-of-process (See [MSHtmlBootstrap](../../../3-concepts/d-registrykeys.md)):

- The [HtmlCallback](htmlcallback.md) property is not supported.
- The [HtmlEmbedCallback](htmlembedcallback.md) property is not supported.

## Example

Also see example code in: [ABCpdf Paged HTML Example](../../../4-examples/13-pagedhtml.md), [XHtmlOptions GetTagRects Function](../1-methods/gettagrects.md), [XHtmlOptions ForChrome Property](2-forchrome.md), [XHtmlOptions ForGecko Property](2-forgecko.md), [XHtmlOptions ForMSHtml Property](2-formshtml.md), [XHtmlOptions ForWebKit Property](2-forwebkit.md), [XHtmlOptions FireShield Property](fireshield.md), [XHtmlOptions HttpAdditionalHeaders Property](httpadditionalheaders.md), [XHtmlOptions LogonName Property](logonname.md).
