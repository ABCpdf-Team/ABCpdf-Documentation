# PageNumber Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The page number of the current page. |

## Notes

This property holds the current Page Number. The current page is the one that receives new objects as they are added to the document.

For example the methods [AddText](../1-methods/addtext.md), [AddLine](../1-methods/addline.md), [AddImage](../1-methods/addimage.md), [FrameRect](../1-methods/framerect.md) and [FillRect](../1-methods/fillrect.md) all operate on the current page.

When you change this property the [Pos](pos.md) property is reset to the top left of the current [Rect](rect.md).

Note that the PageNumber property is not the same as the [Page](page.md) property. The Page holds an Object ID typically returned from a call to [AddPage](../1-methods/addpage.md). The PageNumber indicates the page using an index ranging between one and the [PageCount](pagecount.md). If you set an invalid index an exception will be raised.

Either the Page or the PageNumber property can be used to set the current page.

If no page is specified the current page is taken to be the first page in the document.

> **Optimization Tips.**
>
> Well structured PDF documents are optimized for fast access to pages. So when you go to a particular page of a document by specifying a PageNumber this operation is quick.
>
> However it is less obvious that getting the PageNumber property can be more expensive than one might think. ABCpdf cannot assume that the PDF is the same as it was last time you accessed the PageNumber so it cannot necessarily just give you the number it had last time. It has to assume the worst case which is that you have reorganized the pages in some way and at the very least it will have to validate the current PageNumber by a test retrieval of that page. At the very worst it will have to scan through the entire page tree looking to see where the current page has ended up.
>
> In general getting the PageNumber is not too expensive. But if you write code which results in it being accessed thousands of times then it can become noticeable. So if you find yourself doing this then consider using the [Page.GetPageArrayAll](../../../6-abcpdf.objects/pages/1-methods/getpagearrayall.md) function instead. It's an easy optimization to make.

## Example

Also see example code in: [ABCpdf Deletion Example](../../../4-examples/05-deletion.md), [ABCpdf Headers and Footers Example](../../../4-examples/06-headers.md), [ABCpdf PDF Rendering Example](../../../4-examples/19-rendering.md), [Doc AddImageCopy Function](../1-methods/addimagecopy.md), [Doc Read Function](../1-methods/read.md), [Doc RemapPages Method](../1-methods/remappages.md), [XRendering SaveCompression Property](../../xrendering/2-properties/savecompression.md), [OpAtom Find Function](../../../7-abcpdf.atoms/opatom/1-methods/find.md), [RenderOperation Save Function](../../../8-abcpdf.operations/6-renderoperation/1-methods/save.md), [CustomFont CustomFont Function](../../../8-abcpdf.operations/r-customfont/1-methods/01-customfont.md).
