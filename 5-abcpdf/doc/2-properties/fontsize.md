# FontSize Property

## Notes

The line height for drawing text.

This property determines the size of text that is added to the document using the AddText and AddTextStyled methods.

The font size is measured in the current Units.

You should prefer use of the XTextStyle.Size property, to which the FontSize property is simply an integer accessor. Assigning a value to the FontSize is exactly equivalent to assigning it to the XTextStyle.Size. Getting a value from this property is exactly equivalent to the following.

[C#] int n = (int)(doc.TextStyle.Size + 0.5);

## Example

The following example adds two blocks of styled text to a document. The first block is in 96 point type and the second is in 192 point type.

[C#] using var doc = new Doc(); doc.FontSize = 96; doc.AddText("Small "); doc.FontSize = 192; doc.AddText("Big"); doc.Save("docfontsize.pdf");

docfontsize.pdf

Also see example code in: ABCpdf Text Flow Example, ABCpdf Text Flow Round Image Example, ABCpdf Multistyle Example, ABCpdf Deletion Example, ABCpdf Headers and Footers Example, ABCpdf Landscape Example, ABCpdf Small Table Example, ABCpdf Large Table Example, ABCpdf Unicode Example, ABCpdf eForm Placeholder Example, ABCpdf eForm FDF Example, ABCpdf Advanced Graphics Example, ABCpdf Fields, Markup and Movies Example, Doc AddBookmark Function, Doc AddColorSpaceFile Function, Doc AddColorSpaceSpot Function, Doc AddFont Function, Doc AddPage Function, Doc AddText Function, Doc AddTextStyled Function, Doc Append Function, Doc EmbedFont Function, Doc Read Function, Doc RemapPages Method, Doc Save Function, Doc Encryption Property, Doc Font Property, Doc Page Property, Doc Pos Property, Doc String Property, Doc TopDown Property, Doc Transform Property, XColor Alpha Property, XEncryption SetCryptMethods Function, XHtmlOptions GetTagRects Function, XHtmlOptions HtmlCallback Property, XPoint Point Property, XRect Rectangle Property, XRendering AntiAliasPolygons Property, XRendering AntiAliasText Property, XRendering IccCmyk Property, XRendering SaveAlpha Property, XTextStyle HPos Property, XTextStyle VPos Property, XTransform Invert Function, XTransform Magnify Function, XTransform Reset Function, XTransform Rotate Function, XTransform AngleUnit�Property, FontObject RuneWidths Property, FontObject Widths Property, Page VectorizeText Function, XpsImportOperation Import Function, SwfImportOperation Import Function, WebPageOperation Doc Property, CustomFont Embed Function.

