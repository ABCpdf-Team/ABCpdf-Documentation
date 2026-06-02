# Color Property

## Notes

The color used for drawing.

This property determines the color used for drawing lines, shapes, filled shapes and text.

## Example

The following code creates a PDF document with a red background.

[C#] using var doc = new Doc(); doc.Color.String = "255 0 0"; doc.FillRect(); doc.Save("doccolor.pdf");

doccolor.pdf

Also see example code in: ABCpdf Deletion Example, ABCpdf Headers and Footers Example, ABCpdf eForm Placeholder Example, ABCpdf Advanced Graphics Example, Doc AddArc Function, Doc AddColorSpaceFile Function, Doc AddColorSpaceSpot Function, Doc AddImageBitmap Function, Doc AddImageObject Function, Doc AddLine Function, Doc AddOval Function, Doc AddPie Function, Doc AddPoly Function, Doc AddXObject Function, Doc FillRect Function, Doc Read Function, Doc RemapPages Method, Doc Options Property, Doc String Property, XColor Alpha Property, XColor Components Property, XHtmlOptions GetTagRects Function, XHtmlOptions HideBackground Property, XHtmlOptions HtmlCallback Property, XImage SetMask Function, XRendering AntiAliasPolygons Property, XRendering AntiAliasText Property, XRendering IccCmyk Property, XRendering SaveAlpha Property, XTagging Close Function, XTransform Magnify Function, XTransform Skew Function, XTransform Translate Function, ColorSpace Gamma Property, ColorSpace WhitePoint Property, Page GetBitmap Function, PixMap SetChromakey Function, SwfImportOperation Import Function, ImageOperation GetImageProperties Function.

