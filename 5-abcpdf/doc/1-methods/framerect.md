# FrameRect Function

Adds a rectangular frame to the current page.

## Syntax

[C#]

```csharp
int FrameRect()int FrameRect(bool inside) int FrameRect(double radiusX, double radiusY)int FrameRect(double radiusX, double radiusY, bool inside)
```

## Params

| **Name** | **Description** |
| --- | --- |
| radiusX | The horizontal radius to use for rounded corners. |
| radiusY | The vertical radius to use for rounded corners. |
| inside | Whether to draw the frame inside the rectangle. |
| return | The Object ID of the newly added Graphic Object. |

## Notes

Adds a rectangular frame to the current page. The frame location and size is determined by the current [rectangle](2-properties/rect.md), the line color is determined by the current [color](2-properties/color.md), the line width is determined by the current [width](2-properties/width.md) and any options are determined by the current [options](2-properties/options.md).

By specifying values for the horizontal and vertical radius parameters you can draw rectangles with rounded corners. The values refers to the radii of the ellipse used to draw the corners.

By setting the horizontal radius parameter to half the width of the rect and the vertical radius parameter to half the height of the rect you can draw ovals and circles.

By default frames are drawn round the outside of the current rectangle. This allows you to add content and then frame it ensuring that the frame and the content do not overlap. However sometimes you may wish to draw the frame round the inside of the rectangle. You can do this by setting the inside parameter to true.

The FrameRect function returns the Object ID of the newly added Graphic Object.

## Example

The following code adds a black frame to a document. The frame is inset from the edges of the document by 50 points horizontally and 100 points vertically.

[C#]

```csharp
using var doc = new Doc();
doc.Rect.Inset(50, 100);
doc.FrameRect();
doc.Save("docframerect.pdf");
```

![](../../../images/pdf/docframerect.pdf.png)
docframerect.pdf

Also see example code in:

* [ABCpdf Text Flow Example](4-examples/02-textflow.md)
* [ABCpdf Text Flow Round Image Example](4-examples/02-textflow2.md)
* [ABCpdf Multistyle Example](4-examples/03-multistyled.md)
* [ABCpdf Headers and Footers Example](4-examples/06-headers.md)
* [ABCpdf Paged HTML Example](4-examples/13-pagedhtml.md)
* [Doc AddImageDoc Function](addimagedoc.md)
* [Doc AddImageToChain Function](addimagetochain.md)
* [Doc Rect Property](2-properties/rect.md)
* [Doc Transform Property](2-properties/transform.md)
* [XHtmlOptions GetTagRects Function](xhtmloptions/1-methods/gettagrects.md)
* [XHtmlOptions UseScript Property](xhtmloptions/2-properties/usescript.md)
* [XRect Rectangle Property](xrect/2-properties/rectangle.md)
* [XTagging Open Function](xtagging/1-methods/04-open.md)
* [XTextStyle HPos Property](xtextstyle/2-properties/hpos.md)
* [XTextStyle VPos Property](xtextstyle/2-properties/vpos.md)
* [XTransform Magnify Function](xtransform/1-methods/magnify.md)
* [XTransform Reset Function](xtransform/1-methods/reset.md)
* [XTransform Skew Function](xtransform/1-methods/skew.md)
* [XTransform Translate Function](xtransform/1-methods/translate.md)
* [FontObject RuneWidths Property](6-abcpdf.objects/fontobject/2-properties/runewidths.md)
* [FontObject Widths Property](6-abcpdf.objects/fontobject/2-properties/widths.md)
* [XpsImportOperation Import Function](8-abcpdf.operations/4-xpsimportoperation/1-methods/import.md)
* [TextOperation Group  Function](8-abcpdf.operations/8-textoperation/1-methods/group.md)
* [ImageOperation GetImageProperties  Function](8-abcpdf.operations/9-imageoperation/1-methods/getimageproperties.md)
* [WebPageOperation Doc Property](8-abcpdf.operations/Q-webpageoperation/2-properties/01-doc.md)
* [CustomFont Embed Function](8-abcpdf.operations/R-customfont/1-methods/02-embed.md).
