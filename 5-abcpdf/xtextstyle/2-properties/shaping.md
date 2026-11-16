# Shaping Property

## Notes

The text shaping.

Text shaping allows the use of ligatures and other glyph substitutions (e.g. alternative characters for vertical text) and is required for advanced positioning of glyphs (e.g. vertical shifts in Thai) using the OpenType GPOS table.

OpenType and TrueType fonts need to be added/embedded in the LanguageType.Unicode language, and XTextStyle.Direction needs to be set to a valid value other than XTextStyle.DirectionType.Default.

The TextShaping enumeration may take the following values:

If the value is set to Default the value is regarded as On if any of the folllowing are true.
