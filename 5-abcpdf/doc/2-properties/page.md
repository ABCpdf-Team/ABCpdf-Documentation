# Page Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The current Page ID. |

## Notes

This property holds the current Page Object ID.

It is important to note that the Page property is different to the [PageNumber](pagenumber.md) property. Either the Page or the PageNumber property can be used to set the current page.

The Page holds an Object ID typically returned from a call to [AddPage](../1-methods/addpage.md). The PageNumber indicates the page using an index ranging between one and the [PageCount](pagecount.md).

Do not set the Page property to a page number. If you have a page number you want to be using the PageNumber property.

The current page is the one that receives new objects as they are added to the document.

For example the methods [AddText](../1-methods/addtext.md), [AddLine](../1-methods/addline.md), [AddImage](../1-methods/addimage.md), [FrameRect](../1-methods/framerect.md) and [FillRect](../1-methods/fillrect.md) all operate on the current page.

When you change the Page property the [Pos](pos.md) property is reset to the top left of the current [Rect](rect.md).

If no page is specified the current page is taken to be the first page in the document.

You cannot set the Page property to an ID which is not a Page object. If you do so the value will not change.

## Example

The following example creates a document with two pages and adds text to each of the pages in turn.

```csharp
using var doc = new Doc();
doc.FontSize = 96; // big text
doc.Page = doc.AddPage();
doc.AddText("Page One");
doc.Page = doc.AddPage();
doc.AddText("Page Two");
doc.Save("docpage.pdf");
```

![](../../../images/pdf/docpage.pdf.png)

![docpage.pdf](../../../images/pdf/docpage.pdf2.png)  
docpage.pdf

Also see example code in: [ABCpdf Text Flow Example](../../../4-examples/02-textflow.md), [ABCpdf Tagged Text Example](../../../4-examples/02-texttagged.md), [ABCpdf Headers and Footers Example](../../../4-examples/06-headers.md), [ABCpdf Unicode Example](../../../4-examples/12-unicode.md), [ABCpdf Paged HTML Example](../../../4-examples/13-pagedhtml.md), [ABCpdf Fields, Markup and Movies Example](../../../4-examples/18-annotations.md), [Doc AddBookmark Function](../1-methods/addbookmark.md), [Doc AddGrid Function](../1-methods/addgrid.md), [Doc AddImageDoc Function](../1-methods/addimagedoc.md), [Doc AddImageToChain Function](../1-methods/addimagetochain.md), [Doc AddPage Function](../1-methods/addpage.md), [Doc AddText Function](../1-methods/addtext.md), [Doc MediaBox Property](mediabox.md), [XForm AddDocTimestamp Function](../../xform/1-methods/adddoctimestamp.md), [XHtmlOptions LinkDestinations Method](../../xhtmloptions/1-methods/linkdestinations.md), [XHtmlOptions LinkPages Method](../../xhtmloptions/1-methods/linkpages.md), [XHtmlOptions UseScript Property](../../xhtmloptions/2-properties/usescript.md), [XImage Frame Property](../../ximage/2-properties/frame.md), [XTagging Open Function](../../xtagging/1-methods/04-open.md), [XTextStyle Kerning Property](../../xtextstyle/2-properties/kerning.md), [XTransform AngleUnit Property](../../xtransform/2-properties/angleunit.md), [Page MakeFormXObject Function](../../../6-abcpdf.objects/page/1-methods/makeformxobject.md), [Page Rotation Property](../../../6-abcpdf.objects/page/2-properties/rotation.md), [Page Thumbnail Property](../../../6-abcpdf.objects/page/2-properties/thumbnail.md), [Signature AddLTV Function](../../../6-abcpdf.objects/signature/1-methods/addltv.md), [XpsImportOperation Import Function](../../../8-abcpdf.operations/4-xpsimportoperation/1-methods/import.md), [SwfImportOperation Import Function](../../../8-abcpdf.operations/5-swfimportoperation/1-methods/import.md), [CustomFont CustomFont Function](../../../8-abcpdf.operations/r-customfont/1-methods/01-customfont.md), [CustomFont Embed Function](../../../8-abcpdf.operations/r-customfont/1-methods/02-embed.md).
