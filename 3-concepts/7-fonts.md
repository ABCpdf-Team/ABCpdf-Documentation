# Fonts and Languages

## Base

The base fonts are guaranteed to be available on all systems.

Using the base fonts in your PDF results in a small document which is guaranteed to render in the same way on all systems. However the base fonts do not support complex languages such as Chinese and Japanese and they do not support some characters used in Eastern Europe.

The following are the names of the base fonts.

- Times-Roman
- Times-Bold
- Times-Italic
- Times-BoldItalic
- Helvetica
- Helvetica-Bold
- Helvetica-Oblique
- Helvetica-BoldOblique
- Courier
- Courier-Bold
- Courier-Oblique
- Courier-BoldOblique
- Symbol
- ZapfDingbats

Use the AddFont method, with the "Latin" language, to reference these fonts.

## Embed

Embedded TrueType or OpenType Unicode fonts are generally the most efficient and reliable way of adding complex language support - for example Cyrillic, Greek, Arabic, Hebrew, Chinese and Japanese - to your PDF documents. However you need to ensure that you have permission to embed and redistribute your chosen font.

ABCpdf includes options to try and protect you from inadvertently embedding copyrighted fonts. However you should not rely on this protection. If you wish to embed fonts it is vitally important that you think about the way these fonts will be used and that you understand the operations permitted by the copyright holder. Ultimately you need to take responsibility for any fonts you embed in your PDF documents.

When embedding large fonts you should generally choose to subset them. Not only does it produce smaller PDF documents but it is also generally faster to embed a subset of a large font than to embed the entire font.

Use the [Doc.EmbedFont](../5-abcpdf/doc/1-methods/embedfont.md) method to embed fonts. Only Latin and Unicode languages can be embedded; other languages will be referenced.

The table below shows the valid combinations of language and horizontal and vertical writing directions.

| Language | Horizontal | Vertical | Notes |
| :---: | :---: | :---: | --- |
| "Latin" | ✓ |  | The default and most efficient encoding for Western languages. |
| "Unicode" | ✓ | ✓ | The setting you will most often want to use when embedding foreign character sets. |
| "Korean" | ✓ | ✓ |  |
| "Japanese" | ✓ | ✓ |  |
| "ChineseS" | ✓ | ✓ | Simple Chinese |
| "ChineseT" | ✓ | ✓ | Traditional Chinese |

## Refs

Referenced TrueType or OpenType fonts produce a smaller PDF document. However for complex languages you will need a recent version of Adobe Acrobat and you will need to install the relevant language pack. Without these you will not be able to view your documents and your viewer may report errors.

Use the [Doc.AddFont](../5-abcpdf/doc/1-methods/addfont.md) method to reference fonts.

The table below shows the valid combinations of language and horizontal and vertical writing directions.

| Language | Horizontal | Vertical | Notes |
| :---: | :---: | :---: | --- |
| "Latin" | ✓ |  | The default and most efficient encoding for Western languages. |
| "Unicode" |  |  | This selector requires that the font be embedded - it cannot be used for referencing fonts. |
| "Korean" | ✓ | ✓ | Requires the relevant Adobe Acrobat Language Pack |
| "Japanese" | ✓ | ✓ | Requires the relevant Adobe Acrobat Language Pack |
| "ChineseS" | ✓ | ✓ | Simple Chinese requires the relevant Adobe Acrobat Language Pack |
| "ChineseT" | ✓ | ✓ | Traditional Chinese requires the relevant Adobe Acrobat Language Pack |

## Type 1

Sometimes, typically when dealing with the Mac platform, you may need to add or embed Type 1 fonts.

You can do this using [Doc.EmbedFont](../5-abcpdf/doc/1-methods/embedfont.md) or [Doc.AddFont](../5-abcpdf/doc/1-methods/addfont.md) in exactly the same way as you would for any other font.

Type 1 fonts contain a limited set of characters. As such the only language which is available is the "Latin" language.

## Reuse

Fonts are changed when they are inserted into a PDF document. As such it can be difficult to reuse a font which has already been embedded.

Unicode fonts are complex and the changes that are made to insert them into a PDF document mean that the characteristics that ABCpdf requires for general text operations are unlikely to be present.

Any font that has been subsetted is obviously going to present difficulty because glyphs have been removed. If you wish to reuse such a font you will not be able to generate output for those glyphs.

Because Type 1 fonts contain a limited set of characters and a simple encoding, they are the most reliable for re-use - they are much more reliable than TrueType fonts.

To access a font that you might be able to re-use you can scan through the [ObjectSoup](../6-abcpdf.objects/2-objectsoup/index.md) looking for [FontObject](../6-abcpdf.objects/fontobject/index.md) objects.

However be aware that the changes made to fonts may vary between software and between font types. As such this kind of operation is unpredictable.

## Issues

ABCpdf will allow you to use any valid TrueType, OpenType or Type 1 (PostScript) font.

If you are having problems accessing a particular font try disabling the ABCpdf font protection functionality. However note that you should not embed and redistribute fonts unless you have permission to do so.

ABCpdf maintains a font cache. This means that for ABCpdf to pick up on a newly installed font you will need to restart any processes that are using ABCpdf.

Alternatively you can pass the path to your font file to the AddFont or EmbedFont method. This will automatically load the font file. Do not move the font file after doing this - ABCpdf relies on fonts staying in place.

Sometimes permissions are placed on individual font files which may restrict access from restricted permission accounts such as ASP or ASP.NET.

Occasionally TrueType fonts are corrupt or non-standard. This can cause problems for ABCpdf (which will refuse to recognize them) or Acrobat (which will refuse to use a font embedded in the PDF). However this type of problem is relatively infrequent and tends to be restricted to unusual fonts such as bar-codes.

If you hit a problem you think is related to a corrupt or nonstandard font please mail us the font and we'll see what we can suggest.

## Detail

ABCpdf .NET is world class when it comes to fonts and text. A backgrounder as to what goes on behind the scenes...

#### ABCpdf has a Deep, Native Understanding of PDF Font Structures

Unlike libraries that simply "draw text" ABCpdf .NET has an intricate understanding of how fonts are embedded and referenced within a PDF file.

- **Font Embedding:** ABCpdf .NET automatically and correctly handles font embedding, which is crucial for document portability. It subsets fonts (including only the glyphs actually used) to minimize file size.
- **Font Programs:** It can parse and work with different font types (TrueType, OpenType, Type 1, Type 3, CFF, CID fonts) at a low level, understanding their encoding maps (CMaps), glyph widths, and metrics. ABCpdf does not use system functions as these are often imprecise and incomplete. Instead it determines metrics and finds features by directly reading and parsing the original font files.
- **Unicode Compliance:** Right from inception ABCpdf .NET was designed with Unicode in mind. It correctly maps characters from your input string to the correct glyph index in the font, ensuring characters like é, ß, or ち appear correctly.

#### Advanced Text Layout and Rendering Engine

The core layout mechanisms are built for precision.

- **Glyph Positioning:** It does not just place characters; it places *glyphs* with exact control over their position, including kerning (adjusting the space between specific character pairs, like "AV") and ligatures (combining characters like "fi" into a single glyph).
- **Text State Control:** It provides meticulous control over the PDF text state parameters: character spacing, word spacing, horizontal and vertical scaling, and text rise (for superscript/subscript). This allows for professional-grade micro-typography.
- **Correct Spacing and Line Breaks:** The layout algorithms calculate string widths and line breaks based on the actual embedded font metrics, not on guesses from the system font. This guarantees that what you design is what you get, on every device.

#### Robust Support for Complex Scripts

This is a major differentiator. Many simpler PDF libraries fail miserably with non-Western languages.

- **Right-to-Left (RTL) Languages:** ABCpdf .NET has robust support for bi-directional languages like Arabic, Hebrew, and Farsi. It handles the complex shaping rules where a character's form changes based on its position in a word (initial, medial, final, isolated).
- **CJK (Chinese, Japanese, Korean) Support:** It expertly handles the thousands of glyphs in these languages, including vertical writing layout and correct line-breaking rules.
- **Indic Scripts:** Supports the complex conjuncts and reordering rules required for languages like Hindi, Tamil, or Bengali.
- **Cursive and Pseudo-random Scripts:** Supports the contextual alternates needed for the support of cursive scripts - one where the letters are designed to connect smoothly to one another, often with flowing strokes. Supports pseudo-random fonts - a font which includes multiple glyphs for the same character and switches between them to avoid repetitive patterns.
- **Shaping and Breaking:** Uses a variety of shaping and breaking engines for control over complex scripts. Typically ABCpdf uses the official Unicode engine along with HarfBuzz and sometimes Uniscribe. HarfBuzz is the industry-standard, open-source text shaping engine used by Android, Chrome, Firefox, and most Linux systems. It supports OpenType features and all major world scripts.

#### The Styled Text System

The styled text system makes complex text layout easy.

- **HTML-like Styling:** You can style text with properties like indent, padding, text style, and fonts simply and easily in a way similar to HTML.
- **Automatic Layout:** Styled text is a sophisticated layout engine. You add styled text, and ABCpdf .NET automatically handles pagination, line breaks and alignment across multiple pages.
- **Rich Text:** You can control many features from obvious ones like font weight and italicisation through to less obvious ones like highlight, multiple strike-thru and text direction.

#### Meticulous Attention to the PDF Specification

The ABCpdf .NET developers are experts on the ISO-standardized PDF specification (PDF 2.0, PDF 1.7, etc.). This means the library produces files that are not just visually correct but are also structurally sound and compliant. This is critical for:

- **Accessibility (PDF/UA):** Generating tagged PDFs where text has a logical reading order, alt text for images, and proper language specification for screen readers. Correct font handling is a prerequisite for this.
- **Archive (PDF/A):** Generating PDFs where text is inserted using correct subsets, entries and values for long term archival standards.
- **Text Extraction and Search:** Because text is stored and mapped correctly, extracting text from an ABCpdf .NET-generated PDF for search indexing or other processing is highly accurate and reliable. You will not get gibberish where special characters or ligatures should be.

#### Comparison to Simpler Alternatives

Many other tools (like simple report generators or basic wrappers) take a naive approach:

1. **They "Print" Text:** They often use the operating system graphics API (e.g., GDI+ on Windows, Java2D) to draw text as a series of shapes (curves and lines) onto the page. This results in larger files (as the text is not real text but paths) and makes the content non-selectable, non-searchable, and inaccessible.
2. **No Font Embedding:** They rely on the system fonts, so the document will look different on another machine that does not have those fonts installed.
3. **No Complex Text Layout:** They completely break on RTL or CJK languages.

#### In Summary:

ABCpdf .NET excels at fonts and text because it **respects text as a complex data structure** and because it understands the **raw font formats.** It knows about the semantics, encoding, and intricate rules of written language and translates that knowledge into a perfectly precise, portable, and compliant PDF document. It is the difference between a word processor and a typewriter.
