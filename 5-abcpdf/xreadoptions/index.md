# XReadOptions Class

Represents settings for read operations.

By creating a XReadOptions object and passing it in during a read operation you can take complete control of the way in which your content is imported. There can be different read modules which can import content in different ways. For example a Microsoft Word Document can be converted to PDF either using OpenOffice.org or by using Microsoft Word. A read options object allows you to precisely target one or more modules using particular settings.

```
System.Object
    WebSupergoo.ABCpdf14.XReadOptions

Implements: IDisposable, IEquatable<XReadOptions>
```

## Methods

| Method | Description |
| --- | --- |
| [XReadOptions](1-methods/1-xreadoptions.md) | XReadOptions Constructor. |
| [ClearCache](1-methods/clearcache.md) | Clear cached data and terminate worker threads and worker processes for a read module. |
| [Clone](1-methods/clone.md) | Creates a deep copy of the current XReadOptions. |
| [Dispose](1-methods/dispose.md) | Dispose of the object. |
| [Equals](1-methods/equals.md) | Test whether the two objects are effectvely the same. |
| [GetHashCode](1-methods/gethashcode.md) | A hash code for the XReadOptions. |

## Properties

| Property | Description |
| --- | --- |
| [ReadModule](2-properties/1-readmodule.md) | Gets or sets the module to use. |
| [AddForms](2-properties/addforms.md) | Whether form fields should be live. |
| [AddLinks](2-properties/addlinks.md) | Whether links should be live. |
| [Bookmarks](2-properties/bookmarks.md) | Bookmark creation strategy. |
| [ContentItem](2-properties/contentitem.md) | Gets or sets the content items to process. |
| [DefaultFont](2-properties/defaultfont.md) | The font to use for text that does not specify a font. |
| [DefaultRect](2-properties/defaultrect.md) | The default document size for documents that do not specify a size. |
| [DotsPerInch](2-properties/dotsperinch.md) | The default resolution to use for the import. |
| [EnableMSOfficeMacros](2-properties/enablemsofficemacros.md) | Whether to enable macros when opening MS Office documents. |
| [ErrorHandling](2-properties/errorhandling.md) | The error handling behavior. |
| [Frame](2-properties/frame.md) | The frame to be read from a multiple frame image such as a movie. |
| [FileExtension](2-properties/fileextension.md) | Gets or sets the file extension for data sources that do not have file names. |
| [Log](2-properties/log.md) | The log for the read operation. |
| [MakeFieldNamesUnique](2-properties/makefieldnamesunique.md) | Whether field names should be changed to make them unique. |
| [MSOfficeParameters](2-properties/msofficeparameters.md) | MS Office PDF conversion control parameters. |
| [OpenOfficeParameters](2-properties/openofficeparameters.md) | OpenOffice.org PDF conversion control parameters. |
| [Operation](2-properties/operation.md) | Gets or sets the Operation to use. |
| [Password](2-properties/password.md) | Gets or sets the password needed to read the source. |
| [PreserveTransparency](2-properties/preservetransparency.md) | Gets or sets a value that indicates whether the transparency of raster images should be preserved. |
| [Repair](2-properties/repair.md) | Whether to apply extra processing to enable certain types of corrupt document to be read. |
| [RichConversion](2-properties/richconversion.md) | Whether rich conversion should be performed. |
| [ShrinkToFit](2-properties/shrinktofit.md) | Whether to try and determine the document size based on the size of the content. |
| [Timeout](2-properties/timeout.md) | Gets or sets the timeout in milliseconds for external components. |
| [SkipRevisions](2-properties/skiprevisions.md) | Skip back a number of revisions when reading an incrementally saved PDF document. |
| [OpenPortfolios](2-properties/openportfolios.md) | Whether to automatically open the default document inside a PDF portfolio rather than the portfolio itself. |
