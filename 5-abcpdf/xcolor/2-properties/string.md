# String Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "0 0 0" | No | The color as a string. |

## Notes

Allows you access to the color as a string.

If the color is in the RGB color space then the string contains three values representing the Red, Green and Blue levels. For example "100 150 200".

If the color is in the CMYK color space then the string contains four values representing the Cyan, Magenta, Yellow and Black levels. For example "30 60 90 10".

If the color is in the Grayscale color space then the string contains one value representing the Gray level. For example "150".

You can use the ColorSpace property to find the current color space for the color.

Alpha values can be indicated by prepending an 'a' to an extra component. For example "30 60 90 a120" would indicate an RGB value with an alpha value of 120.

## Example

None.

Also see example code in: [ABCpdf Deletion Example](../../../4-examples/05-deletion.md), [ABCpdf Headers and Footers Example](../../../4-examples/06-headers.md), [ABCpdf eForm Placeholder Example](../../../4-examples/15-eform2.md), [ABCpdf Advanced Graphics Example](../../../4-examples/17-advancedgraphics.md), [Doc AddArc Function](../../doc/1-methods/addarc.md), [Doc AddColorSpaceFile Function](../../doc/1-methods/addcolorspacefile.md), [Doc AddImageBitmap Function](../../doc/1-methods/addimagebitmap.md), [Doc AddImageObject Function](../../doc/1-methods/addimageobject.md), [Doc AddLine Function](../../doc/1-methods/addline.md), [Doc AddOval Function](../../doc/1-methods/addoval.md), [Doc AddPie Function](../../doc/1-methods/addpie.md), [Doc AddPoly Function](../../doc/1-methods/addpoly.md), [Doc Read Function](../../doc/1-methods/read.md), [Doc RemapPages Method](../../doc/1-methods/remappages.md), [Doc Color Property](../../doc/2-properties/color.md), [Doc Options Property](../../doc/2-properties/options.md), [XHtmlOptions GetTagRects Function](../../xhtmloptions/1-methods/gettagrects.md), [XHtmlOptions HideBackground Property](../../xhtmloptions/2-properties/hidebackground.md), [XHtmlOptions HtmlCallback Property](../../xhtmloptions/2-properties/htmlcallback.md), [XImage SetMask Function](../../ximage/1-methods/setmask.md), [XRendering AntiAliasPolygons Property](../../xrendering/2-properties/antialiaspolygons.md), [XRendering AntiAliasText Property](../../xrendering/2-properties/antialiastext.md), [XRendering IccCmyk Property](../../xrendering/2-properties/icccmyk.md), [XRendering SaveAlpha Property](../../xrendering/2-properties/savealpha.md), [XTransform Magnify Function](../../xtransform/1-methods/magnify.md), [XTransform Skew Function](../../xtransform/1-methods/skew.md), [XTransform Translate Function](../../xtransform/1-methods/translate.md), [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md), [PixMap SetChromakey Function](../../../6-abcpdf.objects/pixmap/1-methods/setchromakey.md), [SwfImportOperation Import Function](../../../8-abcpdf.operations/5-swfimportoperation/1-methods/import.md).
