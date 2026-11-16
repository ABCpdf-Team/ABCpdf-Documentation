# TextStyle Property

## Notes

This property determines the current style settings used for adding text.

This property is read only, but the object it returns can be modified.

## Example

The following code creates a PDF document and adds some text using a number of the text style properties to control formatting.

[C#] using var doc = new Doc(); string text = "Gallia est omnis divisa in partes tres, quarum unam incolunt Belgae, aliam Aquitani, tertiam qui ipsorum lingua Celtae, nostra Galli appellantur. Hi omnes lingua, institutis, legibus inter se differunt. Gallos ab Aquitanis Garumna flumen, a Belgis Matrona et Sequana dividit."; text = text + "\r\n" + text + "\r\n" + text + "\r\n"; doc.Rect.Inset(20, 20); doc.TextStyle.Size = 32; doc.TextStyle.Justification = 1; doc.TextStyle.Indent = 64; doc.TextStyle.ParaSpacing = 32; doc.AddText(text); doc.Save("doctextstyle.pdf");

doctextstyle.pdf

Also see example code in: ABCpdf Text Flow Example, ABCpdf Text Flow Round Image Example, ABCpdf Tagged Text Example, ABCpdf Deletion Example, ABCpdf Headers and Footers Example, Doc AddPage Function, Doc Append Function, Doc Read Function, Doc RemapPages Method, XRendering SaveAlpha Property, XTagging Open Function, XTagging Close Function, XTextStyle AutoTag Property, XTextStyle Bold Property, XTextStyle CharSpacing Property, XTextStyle HPos Property, XTextStyle Indent Property, XTextStyle Italic Property, XTextStyle Justification Property, XTextStyle Kerning Property, XTextStyle LeftMargin Property, XTextStyle LineSpacing Property, XTextStyle Outline Property, XTextStyle ParaSpacing Property, XTextStyle Size Property, XTextStyle Strike Property, XTextStyle Strike2 Property, XTextStyle Underline Property, XTextStyle VPos Property, XTextStyle WordSpacing Property, XTransform Rotate Function, XTransform AngleUnit�Property, FontObject RuneWidths Property, FontObject Widths Property, Page GetBitmap Function, XpsImportOperation Import Function, SwfImportOperation Import Function.

