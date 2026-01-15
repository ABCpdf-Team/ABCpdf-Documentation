# AddFont Function

Adds a font reference to the document.

## Params

| Name | Description |
| --- | --- |
| name | The name of the font typeface. |
| language | The language type to use. The LanguageType enumeration may take the following values: Latin Unicode - NB: This requires that the font be embedded. If you wish to use this selector use the EmbedFont call. Korean Japanese ChineseS ChineseT See the Fonts and Languages section for details on language types. The default language type is Latin. |
| vertical | Whether the text direction should be vertical. See the Fonts and Languages section for details on writing directions. The default is false to indicate standard left to right layout. |
| return | The Object ID of the newly added Font Object. |

## Notes

Adds a font to the document.

The font name and a description of the font style is held within the document. However the actual font itself is not added to the document unless the language is Unicode. (When Unicode is specified, this method will embed the font without subsetting.) If you wish to embed a font or use the Unicode language, you should use the EmbedFont method.

When a client opens the PDF Acrobat will attempt to find the exact same font on the client system. If the exact font is not available then a substitute font will be chosen using the font description to determine the best match.

The following fonts are guaranteed to be available on every system.

Times-Roman Times-Bold Times-Italic Times-BoldItalic Helvetica Helvetica-Bold Helvetica-Oblique Helvetica-BoldOblique Courier Courier-Bold Courier-Oblique Courier-BoldOblique Symbol ZapfDingbats

Additionally you can add any TrueType, OpenType or Type 1 font that you have installed on your system. The name you should use is the one referenced in your fonts folder. For example.

Arial Arial Black Arial Black Italic ... Book Antiqua Book Antiqua Bold Book Antiqua Bold Italic Book Antiqua Italic ... Venetian301BT Venetian301BT Bold ...

The AddFont function returns the Object ID of the newly added Font Object. Typically you will want to assign this return value to the document Font property using code of the form. [C#] theDoc.Font = theDoc.AddFont("Courier");

[Visual Basic] theDoc.Font = theDoc.AddFont("Courier")

If the specified font could not be found then you will get an Object ID of zero returned. You may wish to check for this possibility otherwise a default font will be used.

Fonts are cached so newly added fonts will not be available to ABCpdf until the application is restarted. If you need to dynamically load a font you can pass this method a path to your font file. This will add the font to the cache and make it available for use. You should not move, rename or delete a font file which has been dynamically loaded using this technique.

## Example

The following code adds two pieces of text to a document. The 
            first piece is in Times-Roman and the second in Helvetica-Bold.

```csharp
using var doc = new Doc();
doc.FontSize = 48;
string font = "Times-Roman ";
doc.Font = doc.AddFont(font);
doc.AddText(font);
font = "Helvetica-Bold";
doc.Font = doc.AddFont(font);
doc.AddText(font);
doc.Save(Server.MapPath("docaddfont.pdf")); // Windows specific);
```

## Results

![docaddfont.pdf ](../../../../images/pdf/docaddfont.pdf.png) — docaddfont.pdf 
