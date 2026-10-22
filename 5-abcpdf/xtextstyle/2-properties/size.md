# Size Property

## Notes

This property determines the size of text that is added to the document using the AddText and AddTextStyled methods.

The Size property is equivalent to the Doc.FontSize property but unlike the FontSize property it allows fractional point sizes to be specified.

The font size is measured in units.

## Example

The following example adds two blocks of styled text to a document. The first block is in 96.5 point type and the second is in 192.5 point type.

[C#] using var doc = new Doc(); doc.TextStyle.Size = 96.5; doc.AddText("Small "); doc.TextStyle.Size = 192.5; doc.AddText("Big"); doc.Save("stylesize.pdf");

stylesize.pdf

Also see example code in: ABCpdf Tagged Text Example, Doc TextStyle Property, XTagging Open Function, XTagging Close Function, XTextStyle AutoTag Property, XTextStyle Bold Property, XTextStyle CharSpacing Property, XTextStyle Indent Property, XTextStyle Italic Property, XTextStyle Justification Property, XTextStyle Kerning Property, XTextStyle LeftMargin Property, XTextStyle LineSpacing Property, XTextStyle Outline Property, XTextStyle ParaSpacing Property, XTextStyle Strike Property, XTextStyle Strike2 Property, XTextStyle Underline Property, XTextStyle WordSpacing Property, Page GetBitmap Function.

