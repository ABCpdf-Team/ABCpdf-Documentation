# EmbedFont Function

Embeds a font into the document.

## Syntax

```csharp
int EmbedFont(string font)
int EmbedFont(string font, LanguageType language)
int EmbedFont(string font, LanguageType language, bool vertical)
int EmbedFont(string font, LanguageType language, bool vertical, bool subset)
int EmbedFont(string font, LanguageType language, bool vertical, bool subset, bool force)
```

## Params

| Name | Description |
| :---: | --- |
| font | The name of the font typeface. |
| language | The language type to use. See the notes below for the possible values.<br>See the [Fonts and Languages](../../../3-concepts/7-fonts.md) section for details on language types. The default language type is LanguageType.Latin. |
| vertical | Whether the text direction should be vertical.<br>See the [Fonts and Languages](../../../3-concepts/7-fonts.md) section for details on writing directions. The default is false to indicate standard left to right layout. |
| subset | Whether to subset the font.<br>See the [Fonts and Languages](../../../3-concepts/7-fonts.md) section for details on subsetting. The default is false to indicate that the font should not be subsetted. |
| force | Whether to override permissions on the font.<br>Fonts often contain embedded licensing information. By default ABCpdf will prevent you from embedding fonts which indicate that embedding is not permitted.<br>You can force the font to be embedded by passing true for this value. |
| return | The Object ID of the newly embedded Font Object. |

## Notes

Embeds a font into the document.

The font name, a description of the font style and the font glyph descriptions themselves are placed into the document. This ensures that the document will always display perfectly on every system and that font substitutions will never need to be made.

There are a number of reasons you may not wish to embed fonts and instead use the [AddFont](addfont.md) method. Embedding fonts can increase the size of your PDF considerably. Additionally by distributing a PDF with an embedded font you are actually redistributing the font itself. You should check with your font supplier or legal department that you have permission to do this.

For information on how to specify font names see the [AddFont](addfont.md) method.

The EmbedFont function returns the Object ID of the newly added Font Object. Typically you will want to assign this return value to the document Font property using code of the form.

```csharp
theDoc.Font = theDoc.EmbedFont("Courier");
```

If the specified font could not be found then you will get an Object ID of zero returned. You may wish to check for this possibility otherwise a default font will be used.

Fonts are cached so newly added fonts will not be available to ABCpdf until the application is restarted. If you need to dynamically load a font you can pass this method a path to your font file. This will add the font to the cache and make it available for use. You should not move, rename or delete a font file which has been dynamically loaded using this technique.

The LanguageType enumeration may take the following values:

- Latin - The default and most efficient encoding for Western languages.
- Unicode - The setting you will most often want to use when embedding foreign character sets.
- Korean - Korean.
- Japanese - Japanese.
- ChineseS - Simplified Chinese.
- ChineseT - Traditional Chinese.

## Example

The following code embeds the font 'Comic Sans MS' into the document and then adds some text.

```csharp
using var doc = new Doc();
doc.FontSize = 216;
string font = "Comic Sans MS";
doc.Font = doc.EmbedFont(font);
doc.AddText(font);
doc.Save("docembedfont.pdf");
```

![docembedfont.pdf](../../../images/pdf/docembedfont.pdf.png)  
docembedfont.pdf
