# What's New?

## ABCChrome

The HTML engines have been upgraded. Along with the older engines we now support ABCChrome 146.

Upgrading from Chrome 123 to Chrome 146 is a significant leap that brings major improvements in security, web standards compatibility, and rendering fidelity, as well as stability and performance for your document generation workflows.

Chrome 146 resolves numerous vulnerabilities that existed in Chrome 123. Chrome 146 includes 29 security fixes, and also introduces client-side protections like "Device Bound Session Credentials" to prevent cookie theft and network-level defenses against CSRF attacks.

Enhanced web features support modern CSS and JavaScript APIs that were unavailable or unstable in Chrome 123, including scroll-triggered animations using pure CSS, the Sanitizer API for XSS protection, scoped custom element registries to avoid library naming conflicts, and improved WebGL and WebGPU graphics capabilities.

Handles modern web content more accurately and consistently with better support for flexible, user-friendly designs through CSS text scaling. Also includes numerous under-the-hood stability improvements not found in the older version.

## Ubuntu 26

We have expanded our Linux support to include Ubuntu 26.04 LTS. Being the latest stable long-term support release, it will receive security and maintenance updates for five years (until April 2031). This means you can deploy your PDF workflows on a modern, well-supported foundation without having to worry about compatibility with older libraries.

Keeping up with new hardware is another reason to use Ubuntu 26.04. It natively supports NVIDIA CUDA and AMD ROCm for AI/ML acceleration, and it ships with the Linux 7.0 kernel for better memory management. You get a streamlined .NET development experience out of the box, with .NET packages officially available through the built‑in Ubuntu feed. This allows you to deploy ABCpdf 14 on a secure, up‑to‑date foundation with minimal friction.

## Compact

Previously if you wanted a smaller, compacted PDF you had to remember to manually call Doc.Flatten on every single page - something people often forgot, leaving their output unnecessarily large.

Now, with the Doc.SaveOptions.Compact property the document automatically compacts itself by flattening page contents to reduce the output size.

You don't have to think about it or remember to call anything - you just get smaller, leaner PDFs out of the box, with the option to disable it only when you specifically need to.

## Compress

You can now control how much compression is applied when using the StreamObject.CompressFlate, Page.Flatten and Doc.Flatten. This gives you the flexibility to prioritize either processing speed or file size reduction depending on your needs.

These functions now accept a compression level parameter from 0 to 100. Using a lower value speeds up compression for time-sensitive operations, while a higher value produces smaller PDF streams when file size matters most.

## Condense

Object stream compression now automatically groups many small PDF objects into a single compressed stream, dramatically reducing file size. This is especially valuable for Tagged PDF documents required for accessibility, where the multitude of structure tags can significantly bloat output.

In our tests, enabling this option shrinks tagged PDFs by over 10% and small documents in the 10-20 KB range can see reductions of 30% or more.

In addition to saving disk space, object stream compression lifts the 10 GB file size limit, allowing you to generate much larger PDFs than previously possible. For modern workflows focused on compact, accessible documents, this feature delivers substantial gains with minimal effort.

## Tag Text

Tagging has been available in ABCpdf .NET for some time, but previous versions required complex setup and detailed knowledge of the PDF tagging specification. This release introduces a much simpler approach that makes tagging accessible to all developers, regardless of their experience of PDF structure.

The new method works like this: you open a tag for a heading or a paragraph, add whatever content you like inside it, and then close the tag. You can repeat this process for as many elements as you need, nesting tags inside each other to build a complete document hierarchy. When you save the PDF, ABCpdf .NET automatically sorts out all the relationships, builds the correct structure tree, and handles details like role maps and structure attributes behind the scenes.

This simplified workflow also gives you full access to advanced tagging features when you need them. You can define custom role maps to translate your document's native element types into standard PDF roles, and you can attach structure attributes to individual tags to provide additional semantic information. The difference is that you no longer have to manage low level objects or worry about keeping the structure tree consistent. Just open, add, close, and save.

Along with this high level tagging functionality we have new low level functionality for use if you want to develop your own tagging mechanisms. For example assigning unique Marked Content Identifiers or MCIDs is essential for building accessible PDFs that work with screen readers, but it can be difficult when you reuse content like Form XObjects or add elements to an existing page. The new GetNextMcid function is now available on both FormXObject and Page objects. Each version scans its own content to find the highest MCID already in use and returns the next available number guaranteeing that every new element you add receives a unique identifier without any manual tracking or risk of collision.

The StructureElementElement class now includes AddKid and InsertKid methods, making it easier to build logical structure trees for accessible PDFs. Both methods accept a simple type string such as "P" for paragraph, an existing IndirectObject that is already a structure element, or another StructureElementElement instance. If the child already belongs to a different parent, it is automatically detached from its previous hierarchy and moved to the new location, saving you from manual cleanup. These methods give you precise control over the nesting and order of headings, paragraphs, and other semantic elements when generating tagged PDFs.

## Tag Doc

Tagging a PDF for accessibility is typically done by opening and closing tags as you add content. However, when working with existing documents or when you need to apply tags to specific regions of a page, this approach can be cumbersome. ABCpdf .NET now introduces a set of methods that let you assign tags directly to arbitrary areas on the page.

You can define overlapping regions each associated with a tag. The library automatically breaks the page content to fit the overlapping shapes and text is tagged according to the most recently applied area that intersects it. This makes retrofitting accessibility to legacy PDFs or precisely structuring complex layouts significantly simpler and more intuitive.

## AI Tagging

Manually tagging existing PDFs for accessibility can be painstaking, especially with complex layouts. This release introduces an AI accessibility module leveraging Docling - an advanced document‑understanding engine- to automatically analyze the page structure of untagged documents.

Docling detects headings, paragraphs, tables, lists, figures and captions, while preserving the natural reading order across columns and pages. The analysis is then passed to our location‑based tagging system, which generates a complete PDF tag tree that respects the original document hierarchy. The result is a fully tagged, accessible PDF with minimal manual effort.

For scanned or image‑based PDFs, the pipeline can also leverage OCR, ensuring that even paper‑originated documents can be processed. When combined with the existing accessibility operations, this gives you a robust, low‑touch route to PDF/UA compliance.

## Font Stores

You can now create private font stores that isolate fonts to specific Doc objects. This gives you a flexible alternative to the global font store, allowing you to load fonts for a particular document without affecting other threads or documents.

You can load all required fonts into a private store, assign that store to any Doc that needs those fonts, and later unload the fonts or delete the original font files once all dependent objects are finished with them.

When two private font stores interact, their fonts are merged into a shared reference group. Fonts are only unloaded and files automatically deleted after every involved store has been disposed. This ensures clean management of font resources even when multiple stores work together.

## Transparency Flattening

You can now measure exactly how much a PDF page changes after flattening transparent content. The FlattenTransparencyOperation class now has a Similarity property that gives you a numerical score comparing the page before and after the operation. This takes the guesswork out of quality control, allowing you to verify automatically that flattening has not introduced unwanted visual artifacts.

The property supports two widely used image quality metrics. The Structural Similarity Index (SSIM) gives a score from -1 to 1, where 1 means the flattened page looks virtually identical to the original. The Peak Signal to Noise Ratio (PSNR) returns a value in decibels, with lower numbers indicating closer matches. Use whichever metric fits your quality standards, and let your automated tests decide whether the result is acceptable.

## Content Stream Scanner

The ContentStreamScanner now includes an Owners property - a stack that tracks the owner of each content stream being processed. The first page level owner is set when you call the Process function and as the scanner moves into nested Form XObjects, each new owner is pushed onto the stack and then popped off when that object finishes. This gives you full visibility into the hierarchy of content you are scanning.

You can now control whether the scanner steps into Form XObjects using the DoFormXObjects property. When set to true, the scanner retrieves the named Form XObject, saves the graphics state, and processes all commands inside it. If the property is false, the Do command is recognized but the scanner does not descend into the object. This is useful because Form XObjects can call other Form XObjects, creating a nested structure that you may or may not want to traverse.

The scanner also gains a DoGraphicsStateSoftMasks property for handling soft mask Form XObjects used in alpha blending. A graphics state soft mask is a special Form XObject referenced by a gs command. When this property is true, the scanner retrieves that Form XObject and processes its commands the first time it is encountered. This allows you to fully inspect the graphics state operations that affect transparency and blending, giving you more complete analysis of complex PDF content.

## Pentest

As in previous releases our regular third party penetration testing feeds into new features and enhanced security.

This is not something that is very visible but it is ever present. We take security seriously and every little helps.

## Metrics

The FontObject properties gives you access to all kerning adjustments defined in a font. Kerning fine tunes the spacing between specific character pairs to make text look more balanced and readable, like pulling an 'i' and an 'e' a little closer together. This property is a dictionary that maps each character pair to its kerning value, which is expressed in thousandths of a PDF unit.

The dictionary uses a helper class called XTuple for its keys. XTuple works seamlessly with both Tuple and ValueTuple, automatically adapting to whatever version of .NET your project uses. You can write natural tuple style code without worrying about which tuple type your framework expects, because XTuple handles the conversion for you behind the scenes.

Character metrics are now available indexed by our new XRune class. An XRune handles characters that fall outside the normal Unicode character range, such as surrogate pairs. A surrogate pair is a way of encoding characters that do not fit into a single 16 bit value, like many emoji or rare Chinese characters. These characters are represented by two code units instead of one. XRune interprets these pairs correctly so that you can work with any character, no matter how complex, without having to manage low level Unicode details yourself.

## Emojis

You can now create custom Type3 fonts that support color icons and characters outside the standard 16 bit Unicode range, making this feature ideal for emojis and other rich symbols. The CustomFont class lets you define individual glyphs, each with its own character reference, Unicode value, bounding box, and visual appearance as a FormXObject. You can add glyphs one by one or build a complete font from a PDF document where each page contains an icon and bookmarks optionally provide Unicode values in hexadecimal format.

Once your custom font is assembled, you call the Embed method to add it to any document, specifying whether the glyphs contain multiple colors and how much spacing should follow each character. The font is then ready to use like any other font in ABCpdf .NET giving you full control over the appearance of custom symbols without relying on system installed fonts or limited character sets.

## Measures

You can now measure how a block of text will fit into lines without actually drawing it on a PDF page. The MeasureTextOperation class takes your text, breaks it at line endings, and returns the length of each line using whatever units you prefer. This is unit agnostic, so you can work in points, pixels, or inches and the result will match your input units. Typically you would provide point based measurements since those match PDF page dimensions.

The operation gives you fine control over text layout before you commit to rendering. You can set font, size, character and word spacing, italic and bold styles, outline thickness, kerning, text direction, and whether to preserve whitespace. The result tells you how many lines the text breaks into and the length of each line. This allows you to plan exactly where to place paragraphs, adjust column widths, or scale layouts dynamically without trial and error on the canvas.

## Text

You now have control over how synthetic bold is applied to text with the new Doc.TextStyle.BoldMethod property. The previous method simulated bold by overlaying three copies of the same normal weight text at slightly offset positions. While most PDF readers are intelligent enough to recognize that the copies represent the same text, some less sophisticated readers can get confused, leading to incorrect or duplicated text extraction.

The new method creates a bolder appearance by painting the text with a thicker stroke and applying an outline, producing a cleaner visual result without duplicating text content ensuring reliable text extraction across all readers. Of course you can still select the old method using the Doc.TextStyle.BoldMethod if that works better for you.

## Reduce Size

The ReduceSizeOperation now includes a RecompressStreams property that gives you finer control over how aggressively the operation reduces PDF file size. When set to true, the operation will recompress streams that are already compressed using lossless methods, potentially achieving even smaller output sizes at the cost of additional processing time. When set to false, streams that are already losslessly compressed will be left untouched, which speeds up the operation when further size reduction is not needed.

In addition to this new property, the ReduceSizeOperation has been optimized specifically for grayscale and black and white images. These types of content now process significantly faster than before, making the operation more efficient for documents that contain scanned pages, monochrome graphics, or grayscale photographs. You will notice the biggest performance gains when working with large batches of such documents.

## Images

Resizing monotone images such as black and white bitmaps now works more reliably with the new Resize overloads on PixMap. Most interpolation algorithms produce intermediate gray pixels when scaling, which do not map cleanly back into a strict black and white color space. The new Resize method handles this by correctly managing the color space conversion during the operation, so you can resize monotone images without ending up with jaggy artifacts.

PixMap also handles palettized images more intelligently when recoloring. Previously, applying a recolor operation would discard the existing palette and expand the image to a full color space. Now, ABCpdf .NET remaps the palette entries instead, preserving the palettized structure while updating the colors. This keeps file sizes smaller and maintains the efficiency of indexed images, which is particularly valuable for documents containing many icons or color limited graphics.

## Rendering

To give you full control over visual tuning we have introduced the Doc.Rendering.UseFontHints property. This setting ensures that all text processed by the engine benefits from enhanced legibility, especially when dealing with complex fonts or detailed layouts. It offers a simple way to elevate the output quality of your application without requiring any changes to your existing font files or embedding logic.

ABCpdf .NET now performs more image resizing on the fly during decompression, eliminating the need for separate scaling passes. This optimization reduces memory overhead significantly because images are scaled to their target size while being in the process of decompression, rather than fully expanding them first. The result is faster rendering and lower peak memory usage, particularly noticeable when working with documents containing many large images or when generating thumbnails.

## Exceptions

In previous versions, PDFException inherited from AppException following older Microsoft guidelines. In ABCpdf 14, PDFException now inherits directly from Exception, aligning with modern .NET practices. We have also updated the library to favor appropriate .NET exception types (such as ArgumentNullException, InvalidOperationException, etc.) over throwing a generic PDFException wherever possible.

If your code expects a PDFException for specific error conditions, you can set PDFException.Preferred to true. This flag restores the legacy behavior - the default is false. Going forward, we recommend that you do not rely on PDFException for control flow, as specific error cases may be replaced with standard .NET exceptions in future releases.

## Other

And as usual there's a whole host of useful new functions and properties like:

