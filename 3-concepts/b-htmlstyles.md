# Styled Text

## Basics

ABCpdf allows a range of HTML support for use when inserting multi-styled text. This can make it much easier to design documents and it can reduce the quantity of code required.

The HTML support offered here does not cover the entire HTML specification. It covers a limited range of the HTML specification as is required for styled text. It also extends the HTML specification to allow you to precisely control elements of style not covered by HTML.

## Chars

ABCpdf lets you use Unicode text. So you can use Styled Text with any language from English to Korean to Japanese.

Normal character entities are standard HTML and hence use the Latin 1 character set. For example '&#153;' equates to the trademark sign.

For convenience you can also specify hex and octal character entities. For example '&#65;', '&#x0041;' and '&#o0101;' all equate to lower case 'a'. Hex and octal character entities are assumed to be expressed in the Unicode character set.

For most situations this will make no difference. However you should note that, above character 127, there are differences between the Latin 1 and the Unicode character set. For example the trademark symbol which is character 153 in Latin 1 is 8482 in Unicode.

If you require fine control over hyphenation you can make use of the soft hyphen character – '&shy;'. This character is invisible and indicates a point at which a chunk of text may reasonably be broken.

## Tags

You can add styled text to your documents using the AddTextStyled method. ABCpdf supports the following HTML tags and Attributes.

This tag is used to delimit the head of an HTML document. All content in the head is ignored.

This tag does not accept any attributes.

This tag is used to mark the body of an HTML document. The body is a type of stylerun and so it accepts the same attributes as a stylerun tag. It also accepts the following additional attributes.

The color for links (anchors) in subsequent content.

Colors are generally specified as RGB in hexadecimal notation (e.g. color="#FF0000") or as one of the sixteen standard color names (e.g. color=red").

You can specify grayscale colors by supplying only one component (e.g. color="#80") and CMYK colors by supplying four (e.g. color="#10203040"). CMYK component ranges between 0 and 100 inclusively so the hexadecimal representation is between 00 and 64.

You can specify high precision colors by passing an array of floating point numbers prepended by an at sign. Each number represents a component intensity in the range zero to one (e.g. color="@ 0.244 0.122 0.342"). The number of components indicates whether the color space is grayscale, RGB or CMYK (e.g. color="@ 0.123 0.246 0.999 0.025" would be CMYK). An alpha value can be indicated by prepending an 'a' to one of the components.

The default link color is RGB blue.

The vertical positioning for the block of text.

Changing this attribute is identical to changing the XTextStyle.VPos property.

This tag is used to force a line break. It also accepts the following additional attributes.

Whether to vertically collapse the line break or not.

Normally, line breaks are affected by the paragraph and line spacing. However sometimes you may need a minimal line break with no spacing. By setting this property to true you can accomplish this.

The default collapse value is false.

This tag is used to mark up paragraphs. Paragraphs are types of styleruns and so they accept the same attributes as stylerun tags. They also accept the following additional attributes.

The text alignment for the paragraph. If no value is specified it is assumed that the text should be left aligned.

You can specify left aligned text (e.g. align=left), right aligned text (e.g. align=right), centered text (e.g. align=center) or justified text (e.g. align=justify).

Changing this attribute is identical to changing the XTextStyle.HPos or XTextStyle.Justification properties.

The line breaking style for the paragraph. This attribute takes a comma delimited list of hints used to control how lines are broken when chaining from one text area to another.

You can specify that a paragraph should be kept with the next one by assigning the keepwithnext hint (e.g. break=keepwithnext). You can specify that there should be a break before a paragraph by specifying the breakbefore hint (e.g. break=breakbefore).

For details on chaining see the AddTextStyled function.

Normally paragraphs have vertical space before and after the body text.

By setting this attribute to zero you can remove vertical space before the paragraph.

Normally paragraphs have vertical space before and after the body text.

By setting this attribute to zero you can remove vertical space after the paragraph.

This tag is used to mark header sections. Headers are types of paragraphs and so they accept the same attributes as paragraph tags.

This tag is used to indicate a list of items. Each list item consists of a marker and some text. Markers may be bullet points, numbers or letters.

Lists are types of paragraphs and so they accept the same attributes as paragraph tags. They also accept the following additional attributes.

The indent of the item text from the left of the marker. This value is measured in the current units.

By altering this property you can change the distance between the marker and the text.

The default is dynamically determined based on the type of marker and the size of the text.

The indent of the left of the marker from the current left of the surrounding text. This value is measured in the current units.

By altering this property you can alter the indent distance for the markers in the list.

The default is dynamically determined based on the type of marker and the size of the text.

Specifies the starting number for the first item in the list.

This is only used when ordered markers are specified.

The default is one.

Specifies the type of marker to use. You can use either ordered markers or unordered markers.

Ordered markers increment for each item in the list. You can use numbers (type=1), lower case roman numerals (type=i), upper case roman numerals (type=I), lower case letters (type='a'), upper case letters (type=A) or none (type=none).

Unordered markers are the same for each item in the list. You can specify bullet points (type=disk), hollow bullets (type=circle) or squares (type=square).

The default type is 'disk'.

The UL tag is used to indicate an unordered list. Unordered lists are types of lists and so they accept the same attributes as list tags. The default marker is the bullet point but the marker will change as lists are nested within each other.

The OL tag is used to indicate an ordered list. Ordered lists are types of lists and so they accept the same attributes as list tags. The default marker type is numeric.

This tag is used to indicate an item within a list. It accepts the following attributes.

Specifies the number for this list item.

Subsequent items are numbered incrementally from this new value.

Specifies the type of marker to use.

You can use the same types as you find in the type attribute of the list tag.

The anchor tag is used to mark subsequent content as a hyperlink. Anchors are types of styleruns and so they accept the same attributes as stylerun tags. They also accept the following additional attributes.

The URL of the destination.

Hyperlinks normally appear as blue underlined text. You can override this style using the body link attribute or by using stylerun attributes in the body of your anchor tag.

This tag is used to apply a bold text style to subsequent content.

ABCpdf will attempt to reference an appropriate bold font. If it cannot locate one it will generate a synthetic bold style using the XTextStyle.Bold property.

This tag does not accept any attributes.

This tag is used to apply an italic text style to subsequent content.

ABCpdf will attempt to reference an appropriate italic font. If it cannot locate one it will generate a synthetic italic style using the XTextStyle.Italic property.

This tag does not accept any attributes.

This tag is used to apply an underline text style to subsequent content. The effect is identical to changing the XTextStyle.Underline property.

This tag does not accept any attributes.

This tag is used to apply an strike-through text style to subsequent content. The effect is identical to changing the XTextStyle.Strike property.

This tag does not accept any attributes.

This tag is used to indicate text to be rendered as superscript.

This tag does not accept any attributes.

This tag is used to indicate text to be rendered as subscript.

This tag does not accept any attributes.

The font tag is used to change the current font style. Fonts are types of styleruns and so they accept the same attributes as stylerun tags. They also accept the following additional attributes.

The font size for subsequent content.

You can set absolute font size by specifying an integer ranging from one to seven (e.g. size=6). Or you can specify a font size relative to the current base font size (e.g. size="+1").

For greater control over the size of text you should use the fontsize attribute.

The color for subsequent content.

Colors are generally specified as RGB in hexadecimal notation (e.g. color="#FF0000") or as one of the sixteen standard color names (e.g. color=red").

You can specify grayscale colors by supplying only one component (e.g. color="#80") and CMYK colors by supplying four (e.g. color="#10203040"). CMYK component ranges between 0 and 100 inclusively so the hexadecimal representation is between 00 and 64.

You can specify an alpha value for your color by appending a slash and a hex value to the end of your color string (e.g. color="#10203040/C0").

You can specify that no color should be applied by using the special 'none' keyword (e.g. color="none"). This can be useful if you wish to specify your own color operators in your own low level code.

You can specify high precision colors by passing an array of floating point numbers prepended by an at sign. Each number represents a component intensity in the range zero to one (e.g. color="@ 0.244 0.122 0.342"). The number of components indicates whether the color space is grayscale, RGB or CMYK (e.g. color="@ 0.123 0.246 0.999 0.025" would be CMYK). An alpha value can be indicated by prepending an 'a' to one of the components.

This attribute sets both the stroke and fill colors.

The stroke color for subsequent content.

This attribute allows you to specify the stroke color independently from the fill color.

The fill color for subsequent content.

This attribute allows you to specify the fill color independently from the stroke color.

The color space for subsequent content.

This attribute takes an Object ID obtained from a previous call to AddColorSpaceFile or AddColorSpaceSpot.

This attribute sets both the stroke and fill color space.

The stroke color space for subsequent content.

This attribute allows you to specify the stroke color space independently from the fill color space.

The fill color space for subsequent content.

This attribute allows you to specify the fill color space independently from the stroke color space.

The font typeface for subsequent content.

This value takes a comma delimited list of typeface names, listed in order of preference. Fonts are referenced rather than embedded.

For greater control over the way that fonts are added to your document you should use the pid attribute.

Whether to embed or reference fonts added via the face attribute.

For details see the EmbedFont method. The default is false.

What language to use when embedding fonts added via the face attribute.

For details see the EmbedFont method. The default is Latin.

Whether to apply font protection when embedding fonts added via the face attribute.

For details see the EmbedFont method. The default is true.

The font family for subsequent content.

This value operates in the same way as the face attribute detailed above.

The font style.

This attribute can take the values oblique, italic or normal. Normal is the default.

NB. ABCpdf does not currently make a distinction between oblique and italic styles.

The font weight.

This attribute can take the a value between 100 (lightest) and 900 (heaviest).

It can also take the following pre-defined values – normal, bold, bolder and lighter.

The default is normal – 400.

NB. ABCpdf cannot currently synthesize font weights of less than 400.

The text rendering mode. Possible values are:

0 Fill text (default)1 Stroke text.2 Fill, then stroke text.3 Neither fill nor stroke text (invisible).4 Fill text and add to path for clipping.5 Stroke text and add to path for clipping.6 Fill, then stroke text and add to path for clipping.7 Add text to path for clipping.

NB. The outline style is a more commonly used alternative to the rendering-mode.

The stylerun tag is used to change the current style. It accepts the following attributes.

The font typeface for subsequent content.

This attribute take an Object ID obtained from a previous call to AddFont or EmbedFont.

The font size for subsequent content.

Changing this attribute is identical to changing the XTextStyle.Size property.

The character spacing for subsequent content.

Changing this attribute is identical to changing the XTextStyle.CharSpacing property.

The word spacing for subsequent content.

Changing this attribute is identical to changing the XTextStyle.WordSpacing property.

The justification for subsequent content.

Changing this attribute is identical to changing the XTextStyle.Justification property.

The horizontal positioning for subsequent content.

Changing this attribute is identical to changing the XTextStyle.HPos property.

Whether to apply a synthetic bold style to subsequent content.

Changing this attribute is identical to changing the XTextStyle.Bold property.

Whether to apply a synthetic italic style subsequent content.

Changing this attribute is identical to changing the XTextStyle.Italic property.

Whether to underline subsequent content.

Changing this attribute is identical to changing the XTextStyle.Underline property.

Whether to apply a strike-through effect to subsequent content.

Changing this attribute is identical to changing the XTextStyle.Strike property.

Whether to apply a double strike-through effect to subsequent content.

Changing this attribute is identical to changing the XTextStyle.Strike2 property.

Whether to outline subsequent content.

Changing this attribute is identical to changing the XTextStyle.Outline property.

The line spacing for subsequent content.

Changing this attribute is identical to changing the XTextStyle.LineSpacing property.

The paragraph spacing for subsequent content.

Changing this attribute is identical to changing the XTextStyle.ParaSpacing property.

By default this value is false which means that XTextStyle.LineSpacing will be applied before each line.

However by setting this parameter to false you can disable line spacing for the first line of text added in a call to AddTextStyled. This has the effect of moving the text up so it butts up against the top of the current Doc.Rect.

By default this value is false which means that XTextStyle.ParaSpacing will be applied before each paragraph.

However by setting this parameter to false you can disable paragraph spacing for the first line of text added in a call to AddTextStyled. This has the effect of moving the text up so it butts up against the top of the current Doc.Rect.

The left margin for subsequent content.

Changing this attribute is identical to changing the XTextStyle.LeftMargin property.

Variable left margins for subsequent content.

The leftmargin property applies one margin to all text in the range. The leftmargins property allows you to apply variable margins depending on how far down the page the text is being positioned. This can be used to flow text around objects such as pictures.

This tag takes a an array of floating point numbers. The array must be a multiple of three long and each triplet defines a margin for a particular vertical range within the Doc.Rect. The values are [yMin yMax Margin] where the y values are measured downwards from the top of the Doc.Rect.

For typical code see the Text Flow Round Image example.

The right margin for subsequent content.

This property is similar to the leftmargin attribute but allows you to specify a margin on the right hand side of the text block.

Variable right margins for subsequent content.

This property is similar to the leftmargins attribute but allows you to specify margins on the right hand side of the text block.

The indent for subsequent content.

Changing this attribute is identical to changing the XTextStyle.Indent property.

A fixed with for the style run.

Each style run has a width. The width is normally determined by the size of the characters in the text.

Under some situations it can be useful to assign a fixed width to the entire style run. This can be used for aligning text and for bullet pointed lists.

Note that the fixed width is specific to each style run and may be inherited by elements within it. So if you nest one stylerun within a container with a fixedwidth attribute, you will end up with two fixed width styleruns. The result may be content twice as wide as you are expecting.

The text rise for subsequent content.

Positive values shift the text upwards. Negative values shift it downwards. The textrise distance is measured in the current units.

Annotations associated with subsequent content.

You can use a link annotation to insert a hyperlink (e.g. annots='link:http://www.google.com/').

You can use a goto annotation to insert a link to another page in the document (e.g. annots='goto:3'). The number indicates the page number. Note that the destination page must exist at the point at which the text is inserted.

You can use a text annotation to insert a textual note (e.g. annots='text:A note to be inserted').

You can use highlight, squiggly, underline, and strikeout annotations for text markup (e.g. annots='highlight:some contents').

While other types of annotations have textual contents (that are specified after colon), link and goto annotations do not. However, you can still mark link and goto annotations with (non-displayed) textual contents using "contents:" so that you can later identify them easily with Doc.GetInfo or Annotation.Contents (e.g. annots='link:http://www.google.com/;contents:alternative description').

The default reading direction.

Bi-directional text such as Hebrew or Arabic is laid out in the context of the default reading direction.

You can specify left to right paragraph direction (e.g. dir=ltr), right to left paragraph direction (e.g. dir=rtl), or use the default of none (e.g. dir=none).

When none is specified the original ABCpdf left to right layout is preserved for compatibility with previous versions.

Arabic requires special text shaping for contextual ligatures and combining characters. This is because each character has different forms depending on placement within a string. Each character can be independent, initial, medial or final. This text shaping is only performed if a reading direction is set. So for Arabic support you should always specify a default reading direction.

Characters at which lines may be broken.

Normally ABCpdf will only break lines after certain characters like spaces. You can indicate additional characters after which a break is acceptable using this parameter.

For example to allow a break after hyphens or underscores you might use canbreakafter='-_'.

The default line breaking engine.

The line breaking engine determines at which points lines can be broken.

You can specify the Uniscribe line breaking engine (e.g. breakengine=uniscribe), the Unicode line breaking engine (e.g. breakengine=unicode), or use the default of auto (e.g. breakengine=auto).

When auto is specified the Uniscribe engine is used for installations on Windows XP and 2003 and the Unicode engine is used for installations on Windows NT and 2000.

Whether lines should wrap or not. The default is true.

If wrapping is turned off (ie by setting this value to false) then lines of text extending outside the drawing area will be truncated.

The transformation for text.

The format of this value is the same as that of XTransform.String. The default value is the identity. This attribute takes precedence over the rotate attribute. The numeric values can optionally be preceded by 'fixed' (e.g. transform='fixed 2 0 0 2 0 0'), which fixes the transformation origin.

The direction to which the rightward direction (the default primary advancement direction) is mapped is the primary advancement direction. The direction in which a new line is offset (i.e. the direction of the offset caused by starting a new line) is the secondary advancement direction.

When the origin is not fixed and the StyleRun is broken into pieces (because of nested tags or line breaks, for example), the transformation is applied to each piece individually. When the primary advancement direction is not horizontal, the effect is observably different as each piece starts at the original baseline.

When the origin is fixed, each piece (without its own transformation) appears as if it starts at where the previous piece ends because the transformation origin is fixed at the beginning of the StyleRun.

The secondary advancement direction is always perpendicular to the primary advancement direction regardless of skews in the transformation. (This is meaningful only in the context of multiple lines within a StyleRun with a fixed transformation.) In which of the two opposite directions the secondary advancement is depends on the direction to which the downward direction (the default secondary advancement direction) is mapped. This allows artificial styles that simulate oblique/italic without affecting the secondary advancement.

Decorations (underline and strike-through) are placed at the correct locations without distortion so they remain rectangular.

The rotation for text.

This value is measured in degrees anticlockwise. The default is zero. This attribute is ignored if the transform attribute is present. The numeric value can be preceded by 'fixed' (e.g. rotate='fixed 30'), which fixes the transformation origin as explained in the transform attribute.

The default size of the ascender.

The PDF specification defines text as drawn from a point anchored at the baseline of a letter. So to place a chunk of text inside a box the text needs to be shifted downwards by the distance between the baseline and the top of the letter. This distance is typically known as the ascender height.

ABCpdf uses its own methods to determine the ascender height for fonts. However using this attribute you can override these methods and specify your own values. This can be useful for situations in which you are drawing text anchored at the baseline rather than the top of the glyphs.

The ascender value is measured in 1000ths of the font height. A typical value might be 800.

The script for the insertion of ligatures such as 'ff' and 'ffl. Ligatures sets are automatically retrieved from the current font.

Determines which OpenType shaping engine/feature set to use.

The script determines how glyphs connect and shape. The language fine-tunes shaping with localized rules within the same script.

Scripts are specified using four character ISO 15924 Codes. A typical value would be "Latn" (Latin) or "Hant" (Traditional Chinese).

For Tamil perhaps one might use "<stylerun dir=ltr ligature-language=ta-IN ligature-script=Taml>".

The language for the insertion of ligatures such as 'ff' and 'ffl. Ligatures sets are automatically retrieved from the current font.

The language helps the shaping engine apply language-specific typographic rules. For example take the German word "Straße". The "ß" character is specific to German and represents a double s. In Switzerland this character is not used and is instead replaced with a double s.

For a font designed to support the German speaking market, OpenType rules in the font might vary the appearance of this character. With the language set to German German (de-DE) we might see "Straße" and in Swiss German (de-CH) we might see "Strasse".

The script determines how glyphs connect and shape. The language fine-tunes shaping with localized rules within the same script.

Languages are specified using IEFT language tags. A typical value would be "en-us".

Ligatures can operate for more complex stylistic reasons than just the ones detailed above. Contextual alternates are a generic mechanism by which the particular glyph that is used is selected dependent on the characters that surround it.

This can be used for cursive scripts in which the characters flow and join together and for pseudo random scripts in which the glyphs used for a specific character vary. You can read more about this on typography sites such as iLoveTypgraphy.

To engage support for contextual-alternates you need to set the text direction to something other than default (typically you would change it to dir=ltr) and also set the ligature-language (typically ligature-language=en-us).

For Hindi one might use "<stylerun dir=ltr ligature-language=hi-IN ligature-script=Deva>".

This tag is used to insert raw content into the PDF content stream.

It is a low level construct which can be used for the insertion of operators like BDC and EMC. However since the content stream is sensitive, be careful only to use these operators if you are sure of what you are doing. Incorrect use is likely to corrupt the page.

You can specify a starting tag for the point at which the tagged content is first written to stream and ending tag for the point at which it finishes being written. These tags will be written outside a BT/ET block. For point based operators like MP you may wish to specify only a starting tag. Tags may be nested.

For MCIDs often you may not know an appropriate value to use. In this case you can use the special value next_mcid which will insert the next MCID available for the page.

Bear in mind that an item of text may be split across more than one page so there may be more than one set of start and end tags each enclosing a portion of the tagged text. For example take the following call,

doc.AddTextStyled("<p tag-start=\"/H1 <</MCID 1>> BDC\" tag-end=\"EMC\">Some text.</p>")

If the complete text fits on one page it might be represented as follows,

/H1 <</MCID 1>> BDC BT ... (Some Text) Tj ET EMC

However the words split across pages, you might end up with this on the first page,

/H1 <</MCID 1>> BDC BT ... (Some) Tj ET EMC

and this on the second.

/H1 <</MCID 1>> BDC BT ... (Text) Tj ET EMC

This tag is used to insert raw content into the PDF content stream.

See the tag-start attribute above for details.

This tag is to automatically tag content using the HTML structures provided to AddText or AddTextStyled.

The default is false.

This tag is used to set an ID which can be later used to identify this piece of text. An ID can be any string or number.

The default is blank.

This tag is used to prefer an outline method for synthetic bolc. For more details see Doc.TextStyle.BoldMethod.

The default is true.

This tag is used to indicate quotations. Block quotes are indented on the left and right relative to the surrounding text. The tag accepts the following attributes.

The left indent for the block of text.

Distances are measured in the current units. The default is 36 points.

The right indent for the block of text.

Distances are measured in the current units. The default is 36 points.

This tag is used to indicate preformatted text. Spaces and line breaks are preserved.

This tag is used to create leaders for structures like a table of contents. A leader is a repeated character - most normally a period - which runs across the page from the heading on the left to the page number on the right.

The item to be repeated is placed between the start and end tag of the leaders element. For example code see the XTextStyle.Kerning property.

The tag accepts the following attributes.

Specifies whether the leaders should be horizontally aligned with each other.

If the tag value is set to true then the individual items in the leader (typically period characters) will be aligned so that leaders on one line are horizontally aligned with the leaders on the next.

If the tag value is set to false then the alignment of the leaders on a particular line will be determined by the width of the text which precedes the leaders..

The default align is 'true'.

Specifies the alignment for the leaders.

The align and hpos tags are mutually incompatible. As such, specifying an hpos will automatically set the align to false.

A block of leaders may not exactly fill the gap between the item of text on the left and the item of text on the right. This setting controls how the block is aligned within this gap. It works in the same way as the XTextStyle.HPos property. So to center your block of leaders between the two items of text you would set the value to 0.5.

By default the hpos is blank.

Specifies any padding for the leaders.

By default leaders will fit exactly into the gap between the header text and the page number. However it can be useful to be able to extend the leaders a little.

The padding is a distance measured in points, by which the leader will be extended. The effect of this is to push the page numbers out and past the Doc.Rect.Right. The main text remains in the Doc.Rect but the numbers are shifted to the right.

By default the padding is zero.

