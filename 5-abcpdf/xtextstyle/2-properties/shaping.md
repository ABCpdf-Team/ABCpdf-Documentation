# Shaping Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `TextShaping` | TextShaping.Default | No | The text shaping. |

## Notes

The text shaping.

Text shaping allows the use of ligatures and other glyph substitutions (e.g. alternative characters for vertical text) and is required for advanced positioning of glyphs (e.g. vertical shifts in Thai) using the OpenType GPOS table.

OpenType and TrueType fonts need to be added/embedded in the LanguageType.Unicode language, and [XTextStyle.Direction](direction.md) needs to be set to a valid value other than XTextStyle.DirectionType.Default.

The TextShaping enumeration may take the following values:

- Default - Uses text shaping under the default conditions.
- On - Uses text shaping whenever possible.
- Off - Does not use text shaping.

If the value is set to Default the value is regarded as On if any of the folllowing are true.

- The font is added or embedded as vertical.
- The ligature-script is set to a valid value.
- The ligature-language is set to a valid value.
- A character from a complex script is detected.
