# Low Level Overrides

Some aspects of ABCpdf can be controlled on a global level.

These are low level settings and are infrequently used. In general you will not need them.

Defaults can be adjusted using registry keys or config files but more often you will simply want to override them on a per-document basis using Doc.SetInfo.

For example to ensure that CCITT images are decompressed and recompressed rather than being inserted directly, you might use code of the following form.

[C#] theDoc.SetInfo(0, "InsertEmbeddedCCITTsDirect", 0);

Registry settings are held at:

Except those listed as "registry only", they can also be specified in app.config or web.config. Please see XSettings.SetConfigSection for the syntax.

ABCpdf uses the temp directory.

You can override the location it uses by setting this value. The specified directory must pre-exist; ABCpdf does not create the non-default temp directory.

By setting this value to 1, you can ensure full compatibility with ABCpdf version 3 layout algorithms.

This setting is obsolete.

By setting this value to 1, you can ensure full compatibility with ABCpdf version 4 layout algorithms.

This setting is obsolete.

By setting this value to 1, you can ensure full compatibility with ABCpdf version 5 layout algorithms.

This setting is obsolete.

This provides guidance to ABCpdf as to the maximum amount of memory it should use.

In a 64 bit environment Windows will attempt to honor all memory requests. However if very large amounts of memory are requested then paging will slow the system down. For this reason ABCpdf will attempt to be a good citizen and limit the maximum amount of memory it will request.

This value is determined in terms of the percentage of RAM available. So if the figure is 200% on a system with 32GB of RAM then ABCpdf will try not to ask for more than 64GB of memory.

This determines the memory management routines used by ABCpdf.

The default memory manager is designed for speed and low fragmentation.

You are unlikely to want to change the value of this key.

ABCpdf compresses black and white images using CCITT compression.

You can disable this type of compression if you wish to produce simple flate compressed images.

When you insert JPEGs using the XImage object, they bypass the normal rendering process and are inserted direct. This can result in a considerable reduction in file size without any loss of visual quality.

However, the final output may vary slightly from that produced by older versions of ABCpdf.

By setting this value to 0, you can ensure compatibility.

When you insert TIFFs using the XImage object, they bypass the normal rendering process and are inserted direct. This can result in a considerable reduction in file size without any loss of visual quality.

If this flag is set this enables certain special features like autorotation.

If the flat is cleared then these features are disabled.

Formats such as TIFF may contain embedded CCITT data which can be inserted directly into a PDF.

On the positive side avoiding a decompression-recompression cycle can save significant time. On the negative side, because the data is not decompressed, there are no checks to ensure the validity of the compression. Acrobat is generally more particular about the format of data and occasionally it can fail to display data that renders correctly when inside a different wrapper. This is rare but not unheard of.

If this flag is set this enables the direct import of this type of data. If the flat is cleared then these features are disabled.

JBIG2 images can be inserted directly into a PDF.

On the positive side avoiding a decompression-recompression cycle can save significant time. On the negative side, because the data is not decompressed, there are no checks to ensure the validity of the compression. Acrobat is generally more particular about the format of data and occasionally it can fail to display data that renders correctly when inside a different wrapper. This is not something we have ever seen any problems with but it is possible.

If this flag is set this enables the direct import of this type of data. If the flat is cleared then these features are disabled.

Formats such as TIFF may contain embedded JPEG data which can be inserted directly into a PDF.

On the positive side avoiding a decompression-recompression cycle can save significant time. On the negative side, because the data is not decompressed, there are no checks to ensure the validity of the compression. Acrobat is generally more particular about the format of data and occasionally it can fail to display data that renders correctly when inside a different wrapper. This is exceptionally rare but not unheard of.

If this flag is set this enables the direct import of this type of data. If the flat is cleared then these features are disabled.

Formats such as TIFF may contain embedded JPEG data which can be inserted directly into a PDF.

This data can be extracted by ABCpdf directly or it can be extracted using features of GDI+. ABCpdf is probably slightly faster at doing this but historically it has used GDI+ as a first option before falling back to its own methods.

If this flag is set this feature will be attempted first using GDI+.

Determines whether anything will be logged in the Application Event Log.

Determines whether errors will be logged in the Application Event Log.

Whether ABCpdf should automatically attempt to recover from serious errors.

This is generally set to false. Recovery may work in some situations but in others it will leave the application in an inconsistent state.

If true, certain run-time consistency checks will be enabled.

If any consistency check fails, then an error will be logged in the Application Event Log.

On startup, the ABCpdf temp directory is checked. If it appears that there are a large number of unused items, then the directory will be cleared.

This setting determines the maximum number of items which are permitted in the directory before a clearout is deemed necessary.

Internally PDFs are made of objects, numbered from one upwards. In a small single page PDF there might be ten or twenty of these. In a large complex document containing thousands of pages you might get perhaps 100,000 objects.

A document containing 500,000 objects is conceivable but unlikely. If you have this many objects you are going to run into limits within the PDF spec. In general it means something has gone wrong.

ABCpdf will post a warning event if the maximum number is exceeded and it will ping as the count doubles. So with the setting at the default, it will log a warning at 500,000 then 1,000,000 then 2,000,000 and so on.

if you see this warning the most likely cause is that you have run into an infinite loop in which you continue adding pages and content. The warning will simply be a harbinger of future problems.

Set the property to zero to disable these warnings.

Whether registry keys can be overridden on a per-document basis.

To override a registry key, use SetInfo with the name of the key and passing zero as the ID. For example:

theDoc.SetInfo(0, "UseScript", "1")

Note that only keys marked as overridable can be overridden this way.

Some PDFs do not conform to Adobe document structuring conventions. For details see section 4.3.1 of the Adobe PDF Specification .

Conforming documents should save the graphics state at the start of drawing and restore the graphics state after drawing is complete. This way it is guaranteed that drawing operations are independent of each other.

Non-conforming documents may make transform and other graphics state changes which cannot easily be undone. When you add your content, it is affected by these leftover state changes.

This key determines whether ABCpdf will automatically detect and fix non-conforming documents.

Whether to preflight objects in the destination document when appending or adding a page from another document.

See XSaveOptions.Preflight for details.

Whether to eliminate redundant objects on save or append.

See XSaveOptions.Refactor for details.

A comma separated list of object ids to ignore when XSaveOptions.Incremental is set to true. It is provided for debugging puposes.

NB this option can only be set using Doc.SetInfo for example: theDoc.SetInfo(0, "IgnoreObjectsOnIncSave", "15,99,101");

The maximum number of children of non-leaf nodes in the page tree. If it is 2 or below, no balancing of the page tree is performed.

The page tree gives the order to the pages. The look-up of pages from page numbers and the identification of page numbers from the pages' IDs are performed using the page tree. The time complexity of these operations is O(PagesMaxKids×log PageCount/log PagesMaxKids) so the smaller PagesMaxKids, the faster the operations.

If the value is 3 or above, the entire tree is balanced when the first time the page tree is modified either by adding a page or removing a page or a non-leaf node (a Pages object). When a page is added such that the parent node has more than PagesMaxKids children or when a page or a non-leaf node is removed such that the (non-root) parent node has less than PagesMaxKids/2 children (or equivalently, less than the floor of (PagesMaxKids + 1)/2 children), the page tree is partially balanced. The balancing of the tree is triggered more often if PagesMaxKids is small.

Setting the PageNumber property to a particular value is not always possible. Most obviously if one sets it to a value smaller than one or greater than the PageCount, the operation is not possible.

Less commonly, PDF documents can contain page trees which are corrupt. In this case when one sets the PageNumber property it may be that the object which is indicated is not a page.

This property determines what should happen in these cases. The default is to ignore the error and leave the current page unchanged. However if you prefer an exception to be thrown you can change the default value of this property.

When the value is false (zero), Doc.AddTextStyled removes pre-existing bold <b> and italic <i> styles within specification of font face in the HTML.

When the value is true (non-zero), Doc.AddTextStyled maintains pre-existing bold <b> and italic <i> styles within specification of font face in the HTML unless overridden by the specification.

This flag controls whether invisible SVG elements are drawn as transparent objects when converted to PDF. Invisible SVG elements are defined as those with "visibility" set to "false", those without any strokes or any fills, or those with both stroke-opacity and fill-opacity set to 0.

For presentation purposes, it is best to not draw invisible objects (the default) because transparency in PDF may radically change the rendering mode in many PDF readers.

TIFF and JPEG images may contain flags to indicate orientation and mirroring.

If this flag is set, ABCpdf will use these flags to ensure that your TIFF and JPEG images are automatically provided the right way up.

This flag also affects the default value of XImage.AppliedOrientation.

In ABCpdf10 and earlier, images were autosized if the width or height of the destination rectangle was zero.

If you were working in TopDown mode the image was positioned with its top left pinned at the location indicated by the rectangle. If you were not in TopDown mode the bottom left of the image was pinned at the location indicated by the rectangle. In both cases the natural dimensions of the supplied image were used to determine the displayed width and height resulting in a 72 dpi output.

The functions that performed autosizing were AddImageBitmap, AddImageCopy, AddImageDoc, AddImageFile and AddImageObject.

This autosizing was problematic for many reasons and it is now disabled by default.

If this flag is set autosizing will be performed.

This flag controls the default value of the TextStyle.Kerning property.

AES Encryption has been through a number of revisions.

Revision 4 used to be the default. However in 2014 Adobe stopped using it and moved to revision 5.

Adobe products automatically re-encode any revision 4 documents as revision 5. As such ABCpdf now does the same.

We expect revision 4 to be deprecated in due course.

If, for compatibility, you require the use of revision 4, you can re-enable it by setting this flag.

When decompressing data, ABCpdf occaisionally encounters decompression errors. If a quantity of data is decompressed before the error occurs, then this value is a tolerance for how much compressed data is left over after the error.

Documents can contain multiple different mappings for characters. Most of the time the mappings are correct and in sync. Occasionally you may come across PDFs which have inconsistent mappings in the different tables.

If this occurs then extracting text from a PDF becomes an imprecise science. Depending on the table used, the output will be different. Most of the time the differences are small but sometimes, on severely compromised documents, they can be abrupt.

In this situation ABCpdf has to determine the most appropriate table using a heuristic method. To prefer the ToUnicode table over this heuristic you can set this property to 1 (true).

Acrobat can sometimes find it difficult to decompress and display progressive JPEG images. So sometimes, if you add this type of data directly into a PDF the image may not display when viewed in Acrobat.

In the long run we would expect that Adobe will resolve this issue within Acrobat. However in the shorter run it can be desirable to work around this issue.

To mitigate the effect of this problem you can detect and recompress progressive JPEG images as they are added to. To do this you simply need to specify a quality setting between 1 and 100.

ABCpdf .NET uses Microsoft's System.Drawing and GDI+ for the processing of EMF and WMF Windows Metafiles.

EMF processing has a long history of critical vulnerabilities based around specially crafted EMF and WMF files. This is a Microsoft issue not a flaw in the applications themselves. The recurring pattern implies there are probably more vulnerabilities to be found.

If you accept untrusted image files and your application does not require EMF support, disabling the codec via this setting eliminates this attack surface entirely.

The default width of borders on Annotations added to PDF documents.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

This parameter allows control over the way that text field appearances are generated.

Some documents contain text fields which are not tall enough for the text that they contain. There are two choices here. You can preserve the requested text size and let the text be clipped. Alternatively, you can reduce the text size so that it fits the height of the field.

The default behavior is to reduce the text size. However, in some cases you may want to override this behavior by altering this setting.

In general ABCpdf will try to avoid updating field appearances. This is because different applications have different ways of generating field appearances and so any update is likely to cause changes.

These changes are likely to be pretty subtle - involving pixel level movements and perhaps changes in text wrapping. However because there is no specification relating to how field appearances should be generated these kind of subtle shifts are inevitable if you regenerate appearance streams.

Acrobat will always regenerate field appearance streams for any documents in which the NeedsAppearances flag is set. This comes at the cost of the kind of subtle shifts detailed above. However because this is done interactively this doesn't tend to matter very much.

Some PDF producers create PDF documents containing incorrect appearance streams. Because Acrobat regenerates the field appearance streams it will display these correctly. ABCpdf will assume that because they are there they are correct and will not.

In this case you may wish to mimic the behavior of Acrobat force the update of the appearance streams. This flag allows you to specify that this should be the case.

This can affect the sizes of buffers ABCpdf will allocate for the /Contents field in signatures. The value is in 1/10 time, so the default value represents 1.5 times.

This is a low level setting. If ABCpdf encounters error related to buffer size not big enough to hold signed messages, you can manually increase this multiplier.

When a document is signed a Prop_Build entry is generated which describes the software environment used to generate the signature.

This is a PDF requirement which is needed so that, if in future, part of the environment is found to be compromised, one can identify documents which may have been affected.

By default ABCpdf will enter elements it feels are relevant. If you wish to add in your own application identifier you can do this by assigning a three element, semicolon delimited string to this property. The three elements within the string relate to the Name, the R and the REx entry respectively.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

Field JavaScript can be used to modify and validate field values.

Each time a character is added by a user, a keystroke JavaScript is triggered to ensure that the value is allowed. Then when the user leaves the field, a validation JavaScript runs to check the entire field. Each time one of these scripts is run the field value may be altered.

Sometimes when you change the value of a field programmatically, you may want to operate in the same way as a user. So programmatically changing a value might be equivalent to a user copying and pasting a value into a field. In that case you would want both the keystroke and validation scripts to be run in the same they would be for a user.

This property allows you to enable the keystroke script.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

Different locales allow the use of different decimal point and thousand separator symbols.

However Acrobat does not cater for these differences and thus assumptions have to be made.

This property allows you to change the character which is used for delimiting thousands in numeric values.

It will only be used in cases where there are multiple possible interpretations of a string.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

HTML rendering sometimes requires two stages: an information gathering stage and a render stage.

For backwards compatibility reasons, you can insert a delay between these two stages. This value is measured in milliseconds.

Certain HTML temp files are automatically deleted by ABCpdf after use.

You are unlikely to want to change the value of this key.

This property is included for backwards compatibility reasons.

The size at which a binary search tree is constructed for HTML rendering.

For larger documents, a binary search tree is a much more efficient structure for HTML rendering than is a linear search tree.

For smaller documents, the time taken to build the tree can outweigh the speed advantages so a linear search tree is better.

This property determines the point at which ABCpdf shifts its strategy from linear to binary searches. The number relates to the number of object fragments in the HTML. The number of object fragments is extremely dependent on the complexity of the page, but a couple of hundred object fragments per PDF page would not be atypical.

Whether to automatically disable HTML filters.

HTML filters can interfere with the HTML to PDF conversion process because they are raster rather than vector based. For this reason, we try to disable them.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

Text in EMF documents has both a location and an enclosing rectangle.

If the location of the text does not match up with the enclosing rectangle this property is used to decide if the text should be shown or hidden.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

The threshold at which images are JPEG compressed.

When an uncompressed image is added to a document ABCpdf may decide whether to use JPEG (lossy) compression or lossless compression based on an analysis of the image.

ABCpdf counts the number of colors used in the image and if the number is greater than this threshold ABCpdf assumes that the image is continuous tone and thus eligible for JPEG compression. The threshold for grayscale images is half that for color images.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

Whether we allow MSHTML to be unloaded when the screen depth changes.

Appropriate values are 0 (MSHTML is never unloaded) and 10 (it is unloaded a little while after the screen properties change).

The number actually refers to the number of calls that ABCpdf makes (once a monitor change has occurred) without keeping MSHTML force loaded. We assume that at some point during this period, Windows will unload the DLL.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

Whether to make URLs unique when the page cache is disabled. A URL parameter with a 7-random-uppercase-letter name and a 7-random-uppercase-letter value is added to the URL. It is applied to URLs that contain queries or have paths that do not end with a slash.

Sometimes caching can occur outside of ABCpdf. Making the URL unique can provide an effective way of forcing the page to be refreshed.

ABCpdf treats background and foreground images differently. For example, it is generally acceptable to split a background image across pages while it is much less acceptable to split a foreground image in this way.

For this reason, ABCpdf tries to determine whether images are foreground or background using a variety of methods.

If the same image appears a number of times within a limited area of the HTML, ABCpdf will assume it is a background image.

This property represents the vertical distance (in pixels) above a particular image in which ABCpdf looks for repeated images.

ABCpdf treats background and foreground images differently. For example, it is generally acceptable to split a background image across pages while it is much less acceptable to split a foreground image in this way.

For this reason, ABCpdf tries to determine whether images are foreground or background using a variety of methods.

If the same image appears a number of times within a limited area of the HTML, ABCpdf will assume it is a background image.

This property represents the number of repeats above which ABCpdf determines that the image is background.

ABCpdf treats background and foreground images differently. For example, it is generally acceptable to split a background image across pages while it is much less acceptable to split a foreground image in this way.

For this reason, ABCpdf tries to determine whether images are foreground or background using a variety of methods.

If an image is very tall and thin, ABCpdf will assume it is a background image.

This property represents the maximum width for this test.

ABCpdf treats background and foreground images differently. For example, it is generally acceptable to split a background image across pages while it is much less acceptable to split a foreground image in this way.

For this reason, ABCpdf tries to determine whether images are foreground or background using a variety of methods.

If an image is very tall and thin, ABCpdf will assume it is a background image.

This property represents the minimum height for this test.

Sometimes, Windows can tell ABCpdf that an HTML page is complete even though background images have not yet finished loading.

This option allows you to specify that ABCpdf should force-load any background images.

Change this value to change the extra margin that ABCpdf adds at the bottom when rendering HTML pages. Due to rendering issues in Internet Explorer, it is necessary to make the HTML page a bit taller. This extra margin is then clipped and so it does not alter the final PDF output.

However, if the page contains objects positioned relatively to the bottom of the page, the objects may be clipped/shifted. Set this property to zero or to a smaller value in order to avoid such problems.

The initial value of XHtmlOptions.HostWebBrowser.

This setting allows you to override the default URL security policies in place on your machine. You can open up or lock down security settings using this registry key.

The string is a sequence of URL Actions (such as URLACTION_HTML_META_REFRESH) and policies (e.g. URLPOLICY_DISALLOW) in a space delimited list. Appropriate values for these type of actions and policies can be found on the Microsoft web site. The default value for this setting disables meta-refresh tags.

Treat with caution as existing security settings are there for a reason.

Cross domain operations are not normally permitted when accessing the HTML DOM. This means that if you have a frameset on one domain and frames in another ABCpdf will be unable to determine appropriate widths and heights for any of the frames.

Ideally to resolve this type of issue you should move the pages to the same domain or reference the domain within the frameset to ensure that MSHTML will allow this type of cross domain scripting. In situations where this is not possible you can specify sites which should be trusted. Any page URLs which start with one of the trusted site URLs will be assigned a special trusted status.

URL lists are space delimited. For example:

http://www.google.com/ http://www.microsoft.com/ http://www.yahoo.com/

Treat with caution as existing security settings are there for a reason.

When importing EMF or HTML content using the MSHTML engine, this property specifies the minimum EMF-to-PDF character-width ratio in 1000ths.

Characters whose (EMF and PDF) widths form ratios between the specified minimum and CharWidthRatioMax (exclusively) assume the PDF character widths as font substitution may occur. Characters whose widths form ratios outside the interval are placed as specified because the text is placed in an unusual way.

When importing EMF or HTML content using the MSHTML engine, this property specifies the maximum EMF-to-PDF character-width ratio in 1000ths.

Characters whose (EMF and PDF) widths form ratios between CharWidthRatioMin and the specified maximum (exclusively) assume the PDF character widths as font substitution may occur. Characters whose widths form ratios outside the interval are placed as specified because the text is placed in an unusual way.

When HTML contained Flash (SWF) movies are added to a PDF document, ABCpdf will make a preview image for the movie.

The preview is what you will see if you do not have Flash installed. It is what is used when printing PDFs. In general, it is what you will see if you open your PDF using a viewer other than Acrobat.

This value is used for SWF raster import in previous versions of ABCpdf and has the same meaning as FlashPreviewWaitTime for SWF vector import.

When the movie is intialized, you can specify a time (in milliseconds) at which the movie will be started.

Note that many movies contain script which can alter the way that the movie is played. For example, a script might reset the the current frame to the start after five seconds of content have been played. So the content you get by setting the preview time to ten seconds may be very different to the content a user will see after watching the movie for ten seconds.

When HTML contained Flash (SWF) movies are added to a PDF document, ABCpdf will make a preview image for the movie.

The preview is what you will see if you do not have Flash installed. It is what is used when printing PDFs. In general, it is what you will see if you open your PDF using a viewer other than Acrobat.

This property determines the time (in milliseconds) that the movie will be given to play before the preview will be made.

Note that many movies contain script which can alter the way that the movie is played. For example, a movie might reset the the current frame to the start after five seconds of content have been played. So the content you get by setting the preview time to ten seconds may be very different to the content a user will see after watching the movie for ten seconds.

When HTML contained Flash (SWF) movies are added to a PDF document, ABCpdf will make a preview image for the movie.

The preview is what you will see if you do not have Flash installed. It is what is used when printing PDFs. In general, it is what you will see if you open your PDF using a viewer other than Acrobat.

This value is used for SWF raster import in previous versions of ABCpdf and is not used for SWF vector import.

This property determines the resolution (in dots per inch) at which the preview will be made.

Changing the screen resolution while a process is running can cause some versions of MSHTML to become confused. If the screen size is reduced then portions of the output HTML may be clipped at the right hand side.

It is unusual for this to be a problem because changing the screen resolution is not a normal event. However some remote access applications can change screen settings in an uncontrolled way which means that someone logging onto a server remotely can sometimes trigger this kind of event in a long running process such as a web application.

This registry key allows you to control what ABCpdf does when this type of event is detected. The possible options are.

When using the out-of-process HTML rendering, such as the Gecko HTML engine or MSHtml with MSHtmlBootstrap specifying out-of-process, ABCpdf maintains a pool of worker processes. This value specifies the maximum number of such processes that ABCpdf can spawn. Please also see XHtmlProcessOptions.MaxProcesses.

The default value is optimized for multi-threaded environments such as a Web server. If your application does not use multiple threads to perform HTML rendering, you can reduce this value to save system resources.

This setting determines the method ABCpdf uses to bootstrap MSHTML.

This is a setting that may be used to speed up HTML rendering of documents when AddLinks is set to true.

Fragment links within an HTML page may refer to anchor names or to element IDs. So to use the LinkPages method one has to keep track of all the IDs in the page. This can add a significant overhead for pages which contain many elements with IDs.

If you are not going to use the LinkPages method you can safely set this property to false. Indeed even if you set it to false ABCpdf will still keep track of names and IDs in anchor elements as there is little overhead associated with this subset of elements.

This is a setting that determines how images in HTML are added to a document.

The default behavior is to add all images directly as long as an ImageQuality has not been specified. This ensures that the quality and size of JPEG images is maintained, that transparent PNG images are inserted using correct transparency and that memory use is minimized.

By setting this property to one you can force images to be inserted indirectly. The HTML rendering engine will be used to decompress any images and then they will be recompressed for insertion into the PDF.

The registry key path in HKEY_CURRENT_USER for overriding MSHTML options. This is the value returned through IDocHostUIHandler2::GetOverrideKeyPath.

You can place keys/values in the specified key in HKEY_CURRENT_USER to override values in "Software\Microsoft\Internet Explorer". While MSHTML queries "Software\Microsoft\Internet Explorer" in both HKEY_CURRENT_USER and HKEY_LOCAL_MACHINE, the path specified by this setting is only queried in HKEY_CURRENT_USER.

If this setting is specified and valid, ABCpdf will write in the specified key instead of "Software\Microsoft\Internet Explorer" when bootstrapping MSHTML.

The path to the parent directory containing the XULRunner38_0 folder for the Gecko engine.

The path to the JavaScript file that sets the preferences for the Gecko engine. See XHtmlOptions.Engine for details.

When the Gecko worker process pool is started, dependent files are checked to ensure that they are untampered. If the files appear to be different from the ones expected, an exception will be thrown.

The check of Non-Microsoft code files involves signature validation, which requires the establishment of a chain of trust, which may require Internet access - something that may not be permitted easily on all setups.

For most setups validation is fast but occasionally, checking certificate revocation may be slow, which can lead to an excessive startup overhead in the region of some seconds.

The value is treated as flags if it is not 1, so 0xffff has the same effect as 1. However, any value greater than 0xffff is invalid and the corresponding behavior is undefined.

When MSHTML or the Gecko engine is run in a separate worker process, this specifies the method of interprocess communication between ABCpdf and the worker process.

When the Gecko engine is used, this setting specifies whether CSS class 'abcpdf-tag-visible' may be used for adding tags (XHtmlOptions.AddTags). For example,

<p id="p1" class="abcpdf-tag-visible" style="border: 1px solid transparent">Gallia est omnis divisa in partes tres.</p>

However this method is deprecated. Use CSS style 'abcpdf-tag-visible: true', instead.

When the Gecko engine is used, this setting specifies whether SMIL animation is stopped. When the animation is stopped, the first frame/sample is used.

This value is in 1000ths of the font size. When the Gecko engine is used, this specifies the maximum relative horizontal shift between adjacent glyphs to consider the glyphs to be in a continuous flow of text. Because of font hinting, character widths and positions reported by Gecko may be different from those in the fonts. Glyphs in a continuous flow are evenly spaced in the text area.

This value is in 1000ths of a point. (A point is 1/72 of an inch.) When the Gecko engine is used, this specifies the maximum absolute horizontal shift between adjacent glyphs to consider the glyphs to be in a continuous flow of text. Because of font hinting, character widths and positions reported by Gecko may be different from those in the fonts. Glyphs in a continuous flow are evenly spaced in the text area.

For HTML rendering using the default ABCChrome rendering engine (currently ABCChrome146), access is required to the current default ABCChrome executable worker process.

By default a set of paths is searched to allow the worker to be found. You can specify a directory which should be checked, using this setting. The directory specified should be the one containing the ABCChrome folder rather than the ABCChrome folder itself.

NB the more specific ABCChrome146Directory setting, the current default engine, will override any value set here. This setting maintains backward compatibility.

For HTML rendering using the ABCChrome65 rendering engine, access is required to the ABCChrome65.exe worker process.

By default a set of paths is searched to allow the worker to be found. You can specify a directory which should be checked, using this setting. This value overrides the ABCChromeDirectory setting as it is version specific.

For HTML rendering using the ABCChrome86 rendering engine, access is required to the ABCChrome86.exe worker process.

By default a set of paths is searched to allow the worker to be found. You can specify a directory which should be checked, using this setting. This value overrides the ABCChromeDirectory setting as it is version specific.

For HTML rendering using the ABCChrome117 rendering engine, access is required to the ABCChrome117.exe worker process.

By default a set of paths is searched to allow the worker to be found. You can specify a directory which should be checked, using this setting. This value overrides the ABCChromeDirectory setting as it is version specific.

For HTML rendering using the ABCChrome123 rendering engine, access is required to the ABCChrome123.exe worker process.

By default a set of paths is searched to allow the worker to be found. You can specify a directory which should be checked, using this setting. This value overrides the ABCChromeDirectory setting as it is version specific.

For HTML rendering using the ABCChrome146 rendering engine, access is required to the ABCChrome146.exe worker process.

By default a set of paths is searched to allow the worker to be found. You can specify a directory which should be checked, using this setting. This value overrides the ABCChromeDirectory setting as it is version specific.

If the ABCChrome.exe worker process could not be found, a short error message is provided.

By setting this value to one, you can ensure that the full set of folders which was searched, is reported in this message.

Before the ABCChrome.exe worker process and dependent files are loaded, a quick sanity check is done to ensure they are correct. If the files appear to be different from the ones expected then an error will be raised.

Part of this check involves signature validation, which requires the establishment of a chain of trust, which may require internet access - something that may not be easily on all setups.

For most setups validation is fast but occasionally, checking certificate revocation may be slow, which can lead to an excessive startup overhead in the region of some seconds.

By setting this value to one, you can disable this file check. Be cautious about doing this as, to do so, invites the possibility of loading files which are wrong and may produce crashes or unusual behavior.

ABCChrome defaults to a sensible tolerance level. It will not report errors if it thinks that the web page has not been affected by them.

By setting this property you can make it more sensitive and less tolerant. This may help in diagnosing subtle network and permissions issues.

The possible values are:

In general you will want the Info level. The verbose level provides more information but can be overly intrusive and can disrupt multi-threaded operation.

You should not use anything other than zero while in production use.

For HTML rendering using the ABCWebKit rendering engine, access is required to the wkhtmltopdf.exe worker process.

By default a set of paths is searched to allow the worker to be found. You can specify a directory which should be checked, using this setting.

If the wkhtmltopdf.exe worker process could not be found, a short error message is provided.

By setting this value to one, you can ensure that the full set of folders which was searched, is reported in this message.

Before the wkhtmltopdf.exe worker process and dependent files are loaded, a quick sanity check is done to ensure they are correct. If the files appear to be different from the ones expected then an error will be raised.

Part of this check involves signature validation, which requires the establishment of a chain of trust, which may require internet access - something that may not be easily on all setups.

For most setups validation is fast but occasionally, checking certificate revocation may be slow, which can lead to an excessive startup overhead in the region of some seconds.

By setting this value to one, you can disable this file check. Be cautious about doing this as, to do so, invites the possibility of loading files which are wrong and may produce crashes or unusual behavior.

This parameter allows low-level control over the way that documents are rendered to vector formats like EMF and EPS.

During the generation of an EMF or EPS file, bitmap generation due to transparency detection will be suppressed. This can cause some unexpected results as neither EMF nor EPS format supports transparency and non-default blending modes to the extent that PDF does.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

This parameter allows low-level control over the way that documents are rendered to bitmap outputs.

During the generation of a high-resolution or scene-antialiased bitmap, the renderer stores PDF rendering objects in a display list. The bitmap is broken into sections and the display list is rendered to each section.

For some very complex PDF files, this display list can become rather large and consume a lot of memory. In these cases, it is better to allocate a complete image and render the PDF objects directly to the image than it is to try and store the individual PDF objects.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

This parameter allows low-level control over the way that text is rendered into vector formats like EPS.

If the value is true, the text is placed directly into the output file when possible. If it is false, the text is converted to vectors, which are then output to the file.

The former method results in smaller files. The latter results in larger but font-independent output files. It is important to note that not everything that looks like text is actually text or can be extracted as text.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

This parameter allows low-level control over the way that documents are rendered to EMF.

This setting controls the type of EMF output. Possible values are:

You may want to change the setting to EmfPlusDual, which means that both EMF and EMF+ entries are included in the output. This produces greater compatibility but at the cost of a doubling in file size.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

This registry key allows you to control the installation of embedded fonts when rendering to EMF.

By default, when you use Rendering.GetData to render to EMF, fonts will be installed in memory and will remain available to the ABCpdf process until Doc.Clear is called. This means that the EMF can be spooled to a printer and the fonts will appear correctly.

By default, when you use Rendering.Save to render to EMF, embedded fonts are not installed and text will be rendered as polygons for any fonts that are not available on the system. This is because when an EMF file is viewed outside the ABCpdf process, memory-resident fonts are not available. Thus any text using those fonts would be subject to font substitution by Windows.

Set this value to 0xFFFFFFFF to disable the installation of embedded fonts in memory, even when calling Rendering.GetData. This results in text rendered with polygons for embedded fonts. Hence, the rendering is slower and the output is bigger.

Set this value to 1 to always install fonts, even when calling Rendering.Save. This results in faster rendering and smaller outputs. However, viewing emf files outside the ABCpdf process may not display embedded fonts correctly.

This registry key allows you to selectively control the installation of embedded fonts when rendering to EMF.

Assuming that RenderInstallFonts is set appropriately, embedded fonts will be installed in memory. However many embedded fonts are subsets of standard system fonts. Referencing the copy which exists in the fonts folder provides two advantages. The first is that the amount of memory used is reduced. However, more importantly, subsetting can occasionally result in a font which looks viable to Acrobat but not to Windows. In this case using the embedded font can result in unreliable text output.

When this value is set to 1 embedded fonts will always be installed. If it is set to 0 then only those fonts that do not appear to have an analog in the fonts folder will be installed.

Some PDFs contain color profiles which do not handle black objects correctly.

This option allows you to bypass the profile transformation if the input colorspace is CMYK ICC and the output is device CMYK, or if the input is Gray ICC based and the output is device CMYK.

Some PDFs contain color profiles which are not well constructed.

This option allows you to bypass embedded color profiles and instead use known good ones.

When an EMF is created the standard settings are taken from the default screen.

Under some circumstances it can be desirable to allow these settings to be taken from a different screen or indeed a device such as a printer.

This property allows you to specify the name of the device to be used for the default EMF settings.

This property is only accessible using the Doc.SetInfo method. The default cannot be overridden using a registry key.

Maximum number of bytes used to resize up an image. When rendering to a high resolution output image, internal pdf images will get resized using the normal resizing methods. It the target (temporary) image exceeds this threshold, we will use a sampling algorithm to place the image in the output image.

Disabled by default. Set to 1 to enable. Converting color spaces using ICC profiles and high precision can take extra processing time, especially for embedded images, however it may be necessary for certain applications or 16 bit output.

The system ICC color profile directory is the location in which system ICC color profiles are stored. On Windows the default is,

%SystemRoot%\system32\spool\drivers\color\

On Linux it is,

/usr/share/color/icc/

Enabled by default if processor supports the advanced vector instructions (AVX). Set to 0 if you do not wish to use these instructions.

Disabled by default unless rendering is 1 bit per sample. When rendering to anti-aliased continuous tone images, the glyphs appear nicer when the glyph is not drawn hinted. Set this to 1 to enable font glyph hinting.

When fonts are not embedded in the pdf, we look for a suitable external font. Occasionally the chosen external font's glyph metrics do not match the metrics specified by the pdf, so we compromise by mapping the width of an external glyph to it's corresponding width as specified in the source pdf. Set to 0 if you do not want this mapping to occur.

When rendering stroked curves, the curve is broken into a series of line segments. The flatness value is the default value for this tesselation, default is '1' which means that when the curve has deviated by 1 pixel, it is broken into a line segment. Note that even though its registry representation is type 'STRING', it will be converted into a DOUBLE numerical value.

PDF documents can contain operators which set the curve flatness. However most PDF applications ignore these requests as they typically make curves look like jagged lines. We also ignore such requests unless this property is changed to true.

When creating a 1 bit per pixel image, some images may come out too light or too dark. This value allows you to customize the general tone of the image. The greater the value, the darker the resulting image. (Enter a value between .01 and 10), 2 is a good value to start for darkening.

The same as property XRendering.MinimumLineWidth.

Setting this property to true produces a more verbose output for the Doc.Rendering.Log.

This hint flag controls ABCpdf policy regarding the use of Windows Media Photo (WMP/JPEG XR) images in converted XPS documents. If this flag is set, ABCpdf would prefer to use WMP over PNG in some situations.

WMP is a versatile format that can handle lossless and lossy compression as well as transparency. It can often reduce the file size of produced XPS documents.

However, some compact .NET runtime environments, such as Silverlight, do not support decoding WMP images. If your XPS documents need to be used in those environments, you may want to turn this flag off.

Images in color-spaces such as CMYK must always be represented as WMP in XPS documents. As such, if you wish to ensure that your documents never use WMP, they must be converted to RGB or Grayscale before export.

Set this value to 1 to enable the logging of the PrintHook library using %SystemRoot%\Temp or set it to a path to a folder to enable the logging using that folder.

The PrintHook library is used to print files to XPS, which are then converted to PDF in ImportAny operations. We may ask you to enable the logging and send us the log files for debugging purposes if you request us to solve related problems.

Log files are named spy_<PID>.txt.

On 64-bit machines, you will need to set this value in the 32-bit registry section (Wow6432Node) as well for intercepting 32-bit processes.

Set this value to 1 for viewing applications that are launched by Operations.ImportAny(), typically Office applications. Set it to 0 or remove it to hide them.

We use Office applications to print their documents to XPS files, which we then convert to PDF. Sometimes these applications get stuck on pop-ups of various types, so it may be useful to see what they are doing.

Please note that there are limitations with this feature—it may not be possible to view applications that run under a different user account. This is normally the case when running Office Applications in a web server process.

This is a setting for the MSOffice read module.

Set to true to prefer using Windows' DCOMLaunch service to create MSOffice application processes. This is mainly needed for using the MSOffice read module in Classic ASP. Please refer to our support page for more instructions to prepare the system for the MSOffice read module in Classic ASP.

If WordGlue .NET is installed, then ABCpdf will use it for importing DOC and DOCX content.

ABCpdf will look in standard locations for WordGlue. However, if you have WordGlue installed in an unusual location, you may wish to let ABCpdf know where to look using this setting.

This applies to the processing of Separation and DeviceN colorspaces. When EPS is converted to PDF, by default we try to keep the original colorspaces.

However, there may be instances where the Separation or DeviceN colorspace causes problems. Set to '0' to force the interpreter to use the equivalent alternate colorspace.

There are special postscript operators that Distiller supplies to help specially written postscript files convert to pdf (namely 'pdfmark'). Setting this value to '0' disables those operators.

Some Postscript or EPS files may look for a device resolution and attempt to optimize the placement of certain object based on that assumed resolution. This can cause problems when converting to PDF, which is resolution independent. Since both EPS and PDF use 'points' as the default resolution, it can appear to a postscript program that the resolution is 72 dots per inch (1 point is 1/72 of an inch). This setting allows one to make the output device (PDF) appear to be any resolution, and the default value of '100' makes the pdf output device appear to the postscript program to be a device with 7200 dots per inch (72 * 100). Making the output device appear as a higher resolution device limits the effect of some postscript functions such as the 'snap_to_device' function that some AI postscript output files may incorporate.

