# CharUsage Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `CharUsageType` | CharUsageType.Default | No | The usage of characters. |

## Notes

This property specifies the characters to use.

The CharUsageType enumeration can take any of the following values:

- Default
- SymbolUnicode — enables the range 0xf000–0xf0ff for symbol fonts. Symbol fonts are usually used in ANSI encoding, and their characters are in the range 0–255. Since symbol characters do not represent Latin characters, the range 0xf000–0xf0ff in Unicode is also mapped to them.
