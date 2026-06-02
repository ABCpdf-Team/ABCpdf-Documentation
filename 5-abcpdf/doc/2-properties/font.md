# Font Property

## Notes

The font used for drawing text.

This property holds the current Font ID and determines the style of text that is added to the document using methods like AddText.

To get a Font ID you need to add your font to the current document using the AddFont method.

The Font property is an accessor for the the XTextStyle.Font property.

## Example

The following example adds two blocks of styled text to a document. The first block is in Helvetica and the second in Courier.

[C#] using var doc = new Doc(); doc.FontSize = 96; // big text doc.Font = doc.AddFont("Helvetica"); doc.AddText("Helvetica Text."); doc.Font = doc.AddFont("Courier"); doc.AddText("Courier Text."); doc.Save("docfont.pdf");

docfont.pdf

Also see example code in: ABCpdf Tagged Text Example, ABCpdf Unicode Example, ABCpdf eForm Placeholder Example, ABCpdf eForm Stamp Example, ABCpdf eForm FDF Example, ABCpdf Fields, Markup and Movies Example, Doc AddFont Function, Doc AddText Function, Doc EmbedFont Function, Doc String Property, XTagging Open Function, XTagging Close Function, FontObject RuneWidths Property, FontObject Widths Property, ArrayAtom FromContentStream Function.

