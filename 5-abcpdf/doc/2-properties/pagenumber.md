# PageNumber Property

## Notes

This property holds the current Page Number. The current page is the one that receives new objects as they are added to the document.

For example the methods AddText, AddLine, AddImage, FrameRect and FillRect all operate on the current page.

When you change this property the Pos property is reset to the top left of the current Rect.

Note that the PageNumber property is not the same as the Page property. The Page holds an Object ID typically returned from a call to AddPage. The PageNumber indicates the page using an index ranging between one and the PageCount. If you set an invalid index an exception will be raised.

Either the Page or the PageNumber property can be used to set the current page.

If no page is specified the current page is taken to be the first page in the document.

Optimization Tips.

Well structured PDF documents are optimized for fast access to pages. So when you go to a particular page of a document by specifying a PageNumber this operation is quick.

However it is less obvious that getting the PageNumber property can be more expensive than one might think. ABCpdf cannot assume that the PDF is the same as it was last time you accessed the PageNumber so it cannot necessarily just give you the number it had last time. It has to assume the worst case which is that you have reorganized the pages in some way and at the very least it will have to validate the current PageNumber by a test retrieval of that page. At the very worst it will have to scan through the entire page tree looking to see where the current page has ended up.

In general getting the PageNumber is not too expensive. But if you write code which results in it being accessed thousands of times then it can become noticeable. So if you find yourself doing this then consider using the Page.GetPageArrayAll function instead. It's an easy optimization to make.

## Example

Also see example code in: ABCpdf Deletion Example, ABCpdf Headers and Footers Example, ABCpdf PDF Rendering Example, Doc AddImageCopy Function, Doc Read Function, Doc RemapPages Method, XRendering SaveCompression Property, OpAtom Find Function, RenderOperation Save Function, CustomFont CustomFont Function.

