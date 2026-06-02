# String Property

## Notes

Allows you access to the rect as a string.

When working in standard PDF coordinates the format of the string is "left bottom right top". When working with top-down coordinates the format of the string is "left top right bottom".

You can use the following page sizes as shortcuts when assigning a string value to an XRect:

## Example

The following code.

[C#] var rc = new XRect(); rc.String = "10 10 200 100"; Response.Write($"Width = {rc.Width}"); Response.Write("&lt;br&gt;"); Response.Write($"Height = {rc.Height}");

Produces the following output.

Width = 190 Height = 90

Also see example code in: ABCpdf Text Flow Round Image Example, ABCpdf Headers and Footers Example, ABCpdf Advanced Graphics Example, ABCpdf PDF Rendering Example, Doc AddImageDoc Function, Doc AddImageFile Function, Doc AddImageObject Function, Doc MediaBox Property, Doc Rect Property, XHtmlOptions GetTagRects Function, XImage Selection Property, XRect Inset Function, XRect Magnify Function, XRect Move Function, XRect Position Function, XRect Resize Function, XRect SetRect Function, XRendering AntiAliasPolygons Property, XRendering AntiAliasText Property, XRendering ColorSpace Property, XRendering DefaultHalftone Property, XRendering IccCmyk Property, XRendering SaveCompression Property, XTransform Invert Function, FontObject RuneWidths Property, FontObject Widths Property, Page GetBitmap Function, TextOperation Group Function, WebPageOperation Doc Property.

