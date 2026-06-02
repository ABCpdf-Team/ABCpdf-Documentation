# Kerning Property

## Notes

The kerning method.

Kerning is similar to character spacing in that it controls how far apart two characters are. However rather than being a constant, it is a value which is determined by the two characters themselves. So the kerning for "tt" would likely be different than for "te".

The KerningType enumeration may take the following values:

The default kerning method is based around the kerning tables in the TrueType font file. Not all fonts contain kerning tables so not all fonts will kern.

## Example

The following shows how to insert a table of contents while disabling kerning.

[C#] string text = File.ReadAllText("../Rez/tableofcontents.txt"); text = text.Replace("\r", "<br>"); // make our carriage returns into breaks text = text.Replace(" ", " "); // make our indent at start of line into nbsp using var doc = new Doc(); doc.TextStyle.Size = 36; doc.TextStyle.Kerning = XTextStyle.KerningType.None; doc.Rect.Inset(10, 10); doc.Page = doc.AddPage(); doc.AddTextStyled(text.Replace(" ~", "<leader>.</leader>")); doc.Save("TableOfContentsWithLeaders.pdf");

Using the following input text.

Chapter 1: Getting Started ~1 Introduction ~2 Next Steps ~3 Chapter 2: What To Do ~4 Some Difficult Bits ~15 Some More Difficult Bits ~20 Chapter 3: In Conclusion ~21 Summary ~22 Endword ~23

We get the following output.

TableOfContentsWithLeaders.pdf

Also see example code in: FontObject RuneWidths Property, FontObject Widths Property.

