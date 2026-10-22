# Direction Property

## Notes

This property specifies the default primary text direction.

The DirectionType enumeration may take the following values:

If a run of English (left-to-right) text is followed by a run of Hebrew (right-to-left) text, LeftToRight gives English text on the left and Hebrew text on the right, whereas RightToLeft gives English text on the right and Hebrew text on the left. In any case, the English text is still left-to-right, and the Hebrew text is still right-to-left.

To support Arabic contextual ligatures (glyph shaping) and right-to-left text, LeftToRight or RightToLeft must be specified at least once somewhere. It can be in this property or in the dir attribute of StyleRun (for Doc.AddTextStyled). If only Default is specified, there will be no contextual ligature support and right-to-left text may appear incorrect.

By setting the direction to a non-default value, you engage the text shaping engine used for complex text layout. Most normally this is used for bi-directional scripts such as Hebrew or Arabic as detailed above.However text shaping also influences other complex languages which have glyphs varying in style and position depending on the surrounding characters. There a variety of these including Hangul, Indic, Burmese, Thai and Tibetan. If you are using one of these types of languages and you are seeing letters or diacritics in the wrong place, set the predominant direction.

## Example

None.

