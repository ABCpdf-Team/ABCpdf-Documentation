# Color Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`XColor`](../../xcolor/index.md) | Black | No | The current drawing and filling color. |

## Notes

The color used for drawing.

This property determines the color used for drawing lines, shapes, filled shapes and text.

## Example

The following code creates a PDF document with a red background.

```csharp
using var doc = new Doc();
doc.Color.String = "255 0 0";
doc.FillRect();
doc.Save("doccolor.pdf");
```

![doccolor.pdf](../../../images/pdf/doccolor.pdf.png)  
doccolor.pdf

Also see example code in: [ABCpdf Deletion Example](../../../4-examples/05-deletion.md), [ABCpdf Headers and Footers Example](../../../4-examples/06-headers.md), [ABCpdf eForm Placeholder Example](../../../4-examples/15-eform2.md), [ABCpdf Advanced Graphics Example](../../../4-examples/17-advancedgraphics.md), [Doc AddArc Function](../1-methods/addarc.md), [Doc AddColorSpaceFile Function](../1-methods/addcolorspacefile.md), [Doc AddColorSpaceSpot Function](../1-methods/addcolorspacespot.md), [Doc AddImageBitmap Function](../1-methods/addimagebitmap.md), [Doc AddImageObject Function](../1-methods/addimageobject.md), [Doc AddLine Function](../1-methods/addline.md), [Doc AddOval Function](../1-methods/addoval.md), [Doc AddPie Function](../1-methods/addpie.md), [Doc AddPoly Function](../1-methods/addpoly.md), [Doc AddXObject Function](../1-methods/addxobject.md), [Doc FillRect Function](../1-methods/fillrect.md), [Doc Read Function](../1-methods/read.md), [Doc RemapPages Method](../1-methods/remappages.md), [Doc Options Property](options.md), [Doc String Property](string.md), [XColor Alpha Property](../../xcolor/2-properties/alpha.md), [XColor Components Property](../../xcolor/2-properties/components.md), [XHtmlOptions GetTagRects Function](../../xhtmloptions/1-methods/gettagrects.md), [XHtmlOptions HideBackground Property](../../xhtmloptions/2-properties/hidebackground.md), [XHtmlOptions HtmlCallback Property](../../xhtmloptions/2-properties/htmlcallback.md), [XImage SetMask Function](../../ximage/1-methods/setmask.md), [XRendering AntiAliasPolygons Property](../../xrendering/2-properties/antialiaspolygons.md), [XRendering AntiAliasText Property](../../xrendering/2-properties/antialiastext.md), [XRendering IccCmyk Property](../../xrendering/2-properties/icccmyk.md), [XRendering SaveAlpha Property](../../xrendering/2-properties/savealpha.md), [XTagging Close Function](../../xtagging/1-methods/05-close.md), [XTransform Magnify Function](../../xtransform/1-methods/magnify.md), [XTransform Skew Function](../../xtransform/1-methods/skew.md), [XTransform Translate Function](../../xtransform/1-methods/translate.md), [ColorSpace Gamma Property](../../../6-abcpdf.objects/colorspace/2-properties/gamma.md), [ColorSpace WhitePoint Property](../../../6-abcpdf.objects/colorspace/2-properties/whitepoint.md), [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md), [PixMap SetChromakey Function](../../../6-abcpdf.objects/pixmap/1-methods/setchromakey.md), [SwfImportOperation Import Function](../../../8-abcpdf.operations/5-swfimportoperation/1-methods/import.md), [ImageOperation GetImageProperties Function](../../../8-abcpdf.operations/9-imageoperation/1-methods/getimageproperties.md).
