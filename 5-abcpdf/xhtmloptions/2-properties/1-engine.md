# Engine Property

## Notes

This property specifies the HTML engine to use when importing HTML pages.

The EngineType enumeration can take any of the following values:

Each HTML engine supports a different subset of HtmlOptions methods and properties. You can use one of the filter objects: ForChrome, ForGecko, ForWebKit and ForMSHtml to filter the supported options in your IDE.

Characteristics of the ABCChrome Engines:

The default ABCChrome representation involves an overhead of about 120 bytes per page. In most situations this is irrelevant but for documents with large numbers of pages, you may wish to eliminate it by calling Page.StampFormXObjects(true) for each page in the document.

Similarly, while font embedding is generally a good idea, it does slightly increase the size of the output. A typical overhead is in the region of 50KB per document, so in most cases this is a tiny part of a much bigger whole. However if you are dealing with very small documents of only a few KB in size, it can become significant. If this is the case you can use the ReduceSizeOperation or FontUnembedment project to remove fonts which have been embedded.

ABCpdf Version 11.0 shipped with ABCChrome 59. Version 11.2 ships with ABCChrome 65. Version 12.0 ships with ABCChrome 86. Version 13.0 ships with ABCChrome 117. Version 13.1 ships with ABCChrome 123.

The core improvements in 65 relates to better handling of repeated headers and footers in tables using the thead and tfoot tags. The way that transparent images are displayed is much improved. There have been minor improvements in text kerning and layout - you should note that these can lead to subtly different line breaking. JavaScript redirects between local files (ie 'file://' protocol URLs) on your machine have been disabled for security reasons.

ABCChrome 86 introduces a raft of security measures designed to make your development more secure. However this improvement did come at some cost in terms of speed.

ABCChrome 117 & 123 are notable in that they are much faster than ABCChrome 86. In our local HTML tests they typically come in twice as fast: a significant improvement over both ABCChrome 86 and ABCChrome 65.

Characteristics of the ABCGecko Engine:

The page break styles in the Gecko engine are not always applied as intuitively as they are in MSHTML. The root of this is the CSS specification which says that break styles must be applicable to block-level elements within the "normal flow of the root element". It allows for these styles to be applied to other elements but does not mandate it.

The upshot of this, within the Gecko engine, is that page break styles cannot be applied within tables, to elements such as table rows. If you are unsure about whether something is likely to work just try Print Preview from within Firefox 38.0 as a simple sanity check.

Gecko configuration...

The ABCGecko engine contains a number of preferences that can be configured. There are a set of .js files in the "XULRunner??_?\defaults\pref" folder that are loaded in alphabetical order when it starts. Each file contains a set of preferences. So by adding your own .js file to this folder, you can add in your own settings.

If you are not familiar with the format of these files, you may find it easier to copy a configuration file from Firefox:

Preferences set by the end user are in the JavaScript file whose path is assigned to the GeckoPrefFile registry value. (Registry values can alternatively be specified in web.config or app.config.) The file is loaded after all JavaScript files in "XULRunner??_?\defaults\pref", so user-set preferences take precedence. Some preferences are in effect only when set by the end user. Here is an incomplete list of such preferences:

Additional supported settings:

Characteristics of the ABCWebKit Engine

Important Note. The ABCWebKit engine should only be used in very special situations. Read carefully and enable this engine at your own risk.

The LGPL under which this module is released requires that you be able to swap different versions in and out and that means that we cannot necessarily ensure that the module you have is even the one you think it is. We sign the engine and check the signature but if you disable this feature to allow use of a different version then you also disable large amounts of security.

For example we have added FireShield™ security to the default ABCWebKit engine. It is strongly recommended that you set the FireShield policy to Deny or Mask and add minimal allowable paths to the FireShield rules. Without FireShield, ABCWebKit is outside the sandbox so any malicious code it might contain is contained within the security environment for the spawned process - but no more than that. FireShield is only loaded if the Policy is not None and if there are rules to apply.

The ABCWebKit engine is based on technology from 2012. It does not support modern HTML correctly and it contains known security flaws. It is only really suitable for use if you have complete control over the inputs you provide to it. Under no circumstances should you allow untrusted URLs or HTML to be provided to this engine. While FireShield provides a good level of defense relating to file access, innovative attackers can find ways to use your machines even if they do not have access to the file system.

You can read more about this here: https://wkhtmltopdf.org/

The ABCWebKit engine, first shipped with ABCpdf 12.1, is by no means as full featured or secure as the other engines. However it is much less dependent on the OS and as a result it can often operate on stripped down systems such as those used in Azure. The characteristics are

This engine is based on WkHtmlToPdf which in turn is based on QtWebKit API. So if you do get unexpected output you may wish to check how the HTML renders in the Qt Web Browser.

If you should wish to use your own custom wkhtmltopdf engine with ABCpdf you will need to change the value for ABCWebKitDisableFileCheck.

For unusual fonts you can often use an SVG version of the font instead. However because these are SVG rather than "real" fonts it is not possible to search or copy and paste. You can make SVG fonts on sites like https://transfonter.org/.

While ABCWebKit will work on Azure, you should note that Azure provides a rather stripped down OS notably light on resources like fonts. Security may be locked down tightly which may stop you using features like FireShield. For these reasons, the behavior and output you get on your local machine may be different from that you get on your Azure platform.

Characteristics of the MSHtml Engine

Important Note. The MSHtml engine is only supported for backwards compatibility. Read carefully before enabling this engine.

There is no sandboxing and little security for this engine because it runs in-process. Behavior is reasonably safe because the core technologies are installed on your machine by Microsoft. However because they are installed by Microsoft they may vary between machines.

The engine is based on Internet Explorer components that come with Windows. The lifecycle policy from Microsoft is that these form part of the OS and thus if your OS is supported then your IE installation is supported. You need IE 9 at minimum.

However the last version of IE was released in 2012 and the Microsoft policy is to move forward with Microsoft Edge rather than Internet Explorer. So you need to be realistic about how much effort Microsoft is going to put into these components.

Internet Explorer configuration...

The Fusion Log Viewer is known to interfere with the initialization of the MSHtml engine. If any problem arises, try disabling it or specify a local custom log path.

Currently, there are some limitations when using the MSHtml engine hosted out-of-process (See MSHtmlBootstrap):

## Example

Also see example code in: ABCpdf Paged HTML Example, XHtmlOptions GetTagRects Function, XHtmlOptions ForChrome Property, XHtmlOptions ForGecko Property, XHtmlOptions ForMSHtml Property, XHtmlOptions ForWebKit Property, XHtmlOptions FireShield Property, XHtmlOptions HttpAdditionalHeaders Property, XHtmlOptions LogonName Property.

