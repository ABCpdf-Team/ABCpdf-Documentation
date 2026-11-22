# Corrupt Documents

## Intro

Occasionally people may supply you with corrupt or non-standard PDF documents.

When you write code to draw on these supplied documents the drawing may appear in the wrong place or the wrong size or even not at all.

The most common cause of this type of issue is that the document MediaBox is non-standard. For example designers using Adobe Illustrator can easily manipulate the page MediaBox to produce legal - but unusual - documents.

You should start by using [AddGrid](../5-abcpdf/doc/1-methods/addgrid.md) as this should give you an idea of the way in which your drawing is failing.

## MediaBox

Most PDFs define page size using a MediaBox anchored at the origin. For example "0 0 612 792".

However it is not required that you do this and some PDF documents define a MediaBox that is correct but unusual. For example "-612 -792 0 0".

You can check if this is the case by reporting the [MediaBox](../5-abcpdf/doc/2-properties/mediabox.md) property after the [Read](../5-abcpdf/doc/1-methods/read.md) method has been called.

If you find this kind of non-standard MediaBox you are probably drawing your content off the edge of the page.

You will need to adjust your drawing so that it occurs within the bounds of the document MediaBox.

## CropBox

The MediaBox defines the area of a page - the actual media size. However there are other measures as well.

The CropBox defines "the visible region of default user space. When the page is displayed or printed, its contents are to be clipped (cropped) to this rectangle and then imposed on the output medium".

When you display your PDF in Acrobat what you see is the area of the page defined by the CropBox rather than the MediaBox.

Normally CropBoxes and MediaBoxes are identical or practically identical. However occasionally you may find that they're not.

This may cause your output to appear in a different location from the one you are expecting.

Indeed your PDF may also impose a TrimBox or a BleedBox. If you're curious about these there are full details in the [Adobe PDF Specification](http://partners.adobe.com/).
