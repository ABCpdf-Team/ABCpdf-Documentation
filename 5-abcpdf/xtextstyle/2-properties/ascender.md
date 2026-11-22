# Ascender Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | -1 | No | An adjustment to allow the text ascender to coincide with the top of the text area. |

## Notes

The distance between the line spacing below the top of the text frame and the first baseline.

Because [LineSpacing](linespacing.md) is always applied at the top, the top of the text rectangle needs to be shifted up by [LineSpacing](linespacing.md) for better control of the position of the first line.

This property is measured in 1000ths of the font size. When it is -1, default spacing will be applied.
