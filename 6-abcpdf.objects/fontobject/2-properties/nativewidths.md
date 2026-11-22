# NativeWidths Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IDictionary<int, int>` | n/a | Yes | The character widths indexed by native character code. |

## Notes

The character widths in thousandths of a unit for characters in the font.

These values are indexed by native character code. If there is no entry for a particular character you should use the [DefaultWidth](defaultwidth.md).
