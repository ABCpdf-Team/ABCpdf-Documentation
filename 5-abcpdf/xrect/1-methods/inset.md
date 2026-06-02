# Inset Function

Insets the edges of the rectangle.

## Syntax

[C#]

```csharp
void Inset(double x, double y)
```

## Params

| **Name** | **Description** |
| --- | --- |
| x | The amount to inset the left and right edges. |
| y | The amount to inset the top and bottom edges. |

## Notes

Insets the edges of the rectangle by a specified horizontal and vertical amount.

## Example

The following code.

[C#]

```csharp
var rc = new XRect();
rc.String = "0 0 200 100";
Response.Write($"Rect = {rc}");
Response.Write("&lt;br&gt;");
rc.Inset(10, 20);
Response.Write("Inset = " + rc.String);
```

Also see example code in:

* [ABCpdf Text Flow Example](4-examples/02-textflow.md)
* [ABCpdf Text Flow Round Image Example](4-examples/02-textflow2.md)
* [ABCpdf Tagged Text Example](4-examples/02-texttagged.md)
* [ABCpdf Multistyle Example](4-examples/03-multistyled.md)
* [ABCpdf Landscape Example](4-examples/08-landscape.md)
* [ABCpdf Small Table Example](4-examples/09-table1.md)
* [ABCpdf Large Table Example](4-examples/10-table2.md)
* [ABCpdf Paged HTML Example](4-examples/13-pagedhtml.md)
* [ABCpdf eForm FDF Example](4-examples/16-eformfdf.md)
* [Doc AddColorSpaceFile Function](doc/1-methods/addcolorspacefile.md)
* [Doc AddColorSpaceSpot Function](doc/1-methods/addcolorspacespot.md)
* [Doc AddImageBitmap Function](doc/1-methods/addimagebitmap.md)
* [Doc AddImageDoc Function](doc/1-methods/addimagedoc.md)
* [Doc AddImageToChain Function](doc/1-methods/addimagetochain.md)
* [Doc AddOval Function](doc/1-methods/addoval.md)
* [Doc AddPie Function](doc/1-methods/addpie.md)
* [Doc AddXObject Function](doc/1-methods/addxobject.md)
* [Doc FillRect Function](doc/1-methods/fillrect.md)
* [Doc FrameRect Function](doc/1-methods/framerect.md)
* [Doc ColorSpace Property](doc/2-properties/colorspace.md)
* [Doc Rect Property](doc/2-properties/rect.md)
* [Doc String Property](doc/2-properties/string.md)
* [Doc TextStyle Property](doc/2-properties/textstyle.md)
* [XColor Alpha Property](xcolor/2-properties/alpha.md)
* [XColor Components Property](xcolor/2-properties/components.md)
* [XHtmlOptions GetTagRects Function](xhtmloptions/1-methods/gettagrects.md)
* [XHtmlOptions LinkDestinations Method](xhtmloptions/1-methods/linkdestinations.md)
* [XHtmlOptions LinkPages Method](xhtmloptions/1-methods/linkpages.md)
* [XHtmlOptions HtmlCallback Property](xhtmloptions/2-properties/htmlcallback.md)
* [XImage SetData Function](ximage/1-methods/setdata.md)
* [XImage SetFile Function](ximage/1-methods/setfile.md)
* [XImage SetMask Function](ximage/1-methods/setmask.md)
* [XImage SetStream Function](ximage/1-methods/setstream.md)
* [XImage Selection Property](ximage/2-properties/selection.md)
* [XRendering AntiAliasImages Property](xrendering/2-properties/antialiasimages.md)
* [XRendering AntiAliasText Property](xrendering/2-properties/antialiastext.md)
* [XRendering IccCmyk Property](xrendering/2-properties/icccmyk.md)
* [XTagging Open Function](xtagging/1-methods/04-open.md)
* [XTextStyle AutoTag Property](xtextstyle/2-properties/autotag.md)
* [XTextStyle Bold Property](xtextstyle/2-properties/bold.md)
* [XTextStyle HPos Property](xtextstyle/2-properties/hpos.md)
* [XTextStyle Indent Property](xtextstyle/2-properties/indent.md)
* [XTextStyle Italic Property](xtextstyle/2-properties/italic.md)
* [XTextStyle Justification Property](xtextstyle/2-properties/justification.md)
* [XTextStyle Kerning Property](xtextstyle/2-properties/kerning.md)
* [XTextStyle ParaSpacing Property](xtextstyle/2-properties/paraspacing.md)
* [XTextStyle Strike Property](xtextstyle/2-properties/strike.md)
* [XTextStyle Strike2 Property](xtextstyle/2-properties/strike2.md)
* [XTextStyle Underline Property](xtextstyle/2-properties/underline.md)
* [XTextStyle VPos Property](xtextstyle/2-properties/vpos.md)
* [XTransform Magnify Function](xtransform/1-methods/magnify.md)
* [XTransform Reset Function](xtransform/1-methods/reset.md)
* [ColorSpace Gamma Property](6-abcpdf.objects/colorspace/2-properties/gamma.md)
* [ColorSpace WhitePoint Property](6-abcpdf.objects/colorspace/2-properties/whitepoint.md)
* [Page GetBitmap Function](6-abcpdf.objects/page/1-methods/getbitmap.md)
* [PixMap SetChromakey Function](6-abcpdf.objects/pixmap/1-methods/setchromakey.md)
* [ArrayAtom FromContentStream Function](7-abcpdf.atoms/arrayatom/1-methods/fromcontentstream.md)
* [WebPageOperation Doc Property](8-abcpdf.operations/Q-webpageoperation/2-properties/01-doc.md)
* [CustomFont Embed Function](8-abcpdf.operations/R-customfont/1-methods/02-embed.md).
