# Doc Class

This is the top level object that represents a PDF document.

```
System.Object
    WebSupergoo.ABCpdf14.Doc

Implements: IDisposable
```

## Methods

| Method | Description |
| --- | --- |
| [AddArc](1-methods/addarc.md) | Adds an arc to the current page. |
| [AddBookmark](1-methods/addbookmark.md) | Adds a bookmark pointing to the current page. |
| ⚠ [AddColorSpaceFile](1-methods/addcolorspacefile.md) | Adds an ICC based color space to the document. |
| [AddColorSpaceSpot](1-methods/addcolorspacespot.md) | Adds a separation color space to the document. |
| [AddFont](1-methods/addfont.md) | Adds a font reference to the document. |
| [AddGrid](1-methods/addgrid.md) | Adds a visible grid to the current page. |
| ⚠ [AddImage](1-methods/addimage.md) | Adds an image to the current page. |
| ⚠ [AddImageBitmap](1-methods/addimagebitmap.md) | Adds a System.Drawing.Bitmap to the current page. |
| ⚠ [AddImageCopy](1-methods/addimagecopy.md) | Adds a copy of an existing image in the Doc, to the current page. |
| ⚠ [AddImageData](1-methods/addimagedata.md) | Extract an image from data and add it to the current page. |
| [AddImageDoc](1-methods/addimagedoc.md) | Draw a page from one PDF document onto the current page of this document. |
| [AddImageFile](1-methods/addimagefile.md) | Extract an image from a file and add it to the current page. |
| ⚠ [AddImageHtml](1-methods/addimagehtml.md) | Renders a web page specified as HTML. |
| ⚠ [AddImageObject](1-methods/addimageobject.md) | Adds an XImage based image to the current page. |
| ⚠ [AddImageToChain](1-methods/addimagetochain.md) | Adds a new page from a paged HTML or PostScript render. |
| ⚠ [AddImageUrl](1-methods/addimageurl.md) | Renders a web page specified by URL. |
| [AddLine](1-methods/addline.md) | Adds a line to the current page. |
| [AddObject](1-methods/addobject.md) | Adds a native PDF object to the document. |
| [AddOval](1-methods/addoval.md) | Adds an oval to the current page. |
| [AddPage](1-methods/addpage.md) | Adds a page to the current document. |
| [AddPie](1-methods/addpie.md) | Adds a pie slice to the current page. |
| [AddPoly](1-methods/addpoly.md) | Adds a polygon to the current page. |
| [AddRect](1-methods/addrect.md) | Add a rectangle to the current page. |
| [AddText](1-methods/addtext.md) | Adds a block of single styled text to the current page. |
| [AddTextStyled](1-methods/addtextstyled.md) | Adds a block of multi-styled text to the current page. |
| [AddXObject](1-methods/addxobject.md) | Add a Form or Image XObject to the current page. |
| [Append](1-methods/append.md) | Appends a PDF to the end of the document. |
| [Chainable](1-methods/chainable.md) | Determines if an object is chainable. |
| [Clear](1-methods/clear.md) | Clears the document. |
| [ClearCachedDecompressedStreams](1-methods/clearcacheddecompressedstreams.md) | Clears the cached, decompressed data for stream objects. |
| [Delete](1-methods/delete.md) | Deletes an object previously added to the document. |
| [EmbedFont](1-methods/embedfont.md) | Embeds a font into the document. |
| [FillRect](1-methods/fillrect.md) | Adds a painted rectangle to the current page. |
| [FitTextStyled](1-methods/fittextstyled.md) | Fit a block of styled text into the current rectangle. |
| [FitText](1-methods/fittext.md) | Fit a block of text into the current rectangle on the current page. |
| [Flatten](1-methods/flatten.md) | Flattens and compresses the current page. |
| [FrameRect](1-methods/framerect.md) | Adds a rectangular frame to the current page. |
| ⚠ [GetData](1-methods/getdata.md) | Saves a document to memory. |
| [GetInfo](1-methods/getinfo.md) | Gets string information about an object. |
| [GetInfoDate](1-methods/getinfodate.md) | Gets date information about an object. |
| [GetInfoDouble](1-methods/getinfodouble.md) | Gets numeric information about an object. |
| [GetInfoInt](1-methods/getinfoint.md) | Gets numeric information about an object. |
| [GetInfoInt64](1-methods/getinfoint64.md) | Gets numeric information about an object. |
| ⚠ [GetStream](1-methods/getstream.md) | Gets a document as raw data stream. |
| [GetText](1-methods/gettext.md) | Extract content from the current page in a specified format. |
| [MeasureText](1-methods/measuretext.md) | Measure the length of a block of text without adding it to the page. |
| ⚠ [Read](1-methods/read.md) | Reads an existing document. |
| [RemapPages](1-methods/remappages.md) | Remaps pages for reordering, copying and deletion. |
| [Save](1-methods/save.md) | Saves the document as PDF, or exports it to another format such as DOCX or HTML. |
| [SetInfo](1-methods/setinfo.md) | Sets information about an object. |
| [ToString](1-methods/tostring.md) | A string representation of the graphic style of the document. |

## Properties

| Property | Description |
| --- | --- |
| [Bookmark](2-properties/bookmark.md) | The top level bookmark for the document. |
| [Color](2-properties/color.md) | The current drawing and filling color. |
| [ColorSpace](2-properties/colorspace.md) | The current ColorSpace ID. |
| [CropBox](2-properties/cropbox.md) | The current document visible page size. |
| [Encryption](2-properties/encryption.md) | The current encryption settings. |
| [Font](2-properties/font.md) | The current Font ID. |
| [FontSize](2-properties/fontsize.md) | The current text size. |
| [FontStore](2-properties/fontstore.md) | The private font store for the document. |
| [Form](2-properties/form.md) | The document form and fields. |
| [HtmlOptions](2-properties/htmloptions.md) | The HTML and URL rendering options. |
| [Layer](2-properties/layer.md) | The insertion layer for new content. |
| [LayerCount](2-properties/layercount.md) | The number of layers on the current page. |
| [MediaBox](2-properties/mediabox.md) | The current document page size. |
| [ObjectSoup](2-properties/objectsoup.md) | The collection of objects that make up the PDF. |
| [Options](2-properties/options.md) | The state options for low level drawing control. |
| [Page](2-properties/page.md) | The current Page ID. |
| [PageCount](2-properties/pagecount.md) | The number of pages in the document. |
| [PageNumber](2-properties/pagenumber.md) | The page number of the current page. |
| [Pos](2-properties/pos.md) | The current drawing position. |
| [Rect](2-properties/rect.md) | The current rectangle used for drawing operations. |
| [Rendering](2-properties/rendering.md) | The rendering options and control. |
| [Root](2-properties/root.md) | The root catalog object. |
| [SaveOptions](2-properties/saveoptions.md) | The save options and control. |
| [String](2-properties/string.md) | A string representation of the graphic style of the document. |
| [Tag](2-properties/tag.md) | The document tagging control. |
| [TextStyle](2-properties/textstyle.md) | The current style for drawing text. |
| [TopDown](2-properties/topdown.md) | The current position of the origin. |
| [Transform](2-properties/transform.md) | The current transformation for drawing. |
| [Units](2-properties/units.md) | The current measurement units. |
| [Width](2-properties/width.md) | The current line width. |
