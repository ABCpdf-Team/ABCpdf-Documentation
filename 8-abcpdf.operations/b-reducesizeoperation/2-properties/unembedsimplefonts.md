# UnembedSimpleFonts Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to unembed simple fonts where possible. |

## Notes

Whether to unembed simple fonts where possible.

Simple fonts are those that use a standard encoding which translates directly to Unicode.

Because the encoding is a standard one, the embedded font can be removed without having to change the drawing instructions on the page.

Most simple fonts are Latin based but there are encodings which use Chinese, Japanese or Korean.

This option is fast and low impact but embedded Latin fonts tend not to be too large.
