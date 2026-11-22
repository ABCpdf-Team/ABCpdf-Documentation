# FontColor Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`XColor`](../../../5-abcpdf/xcolor/index.md) | n/a | Yes | The color used for drawing this text fragment. |

## Notes

The color used for drawing this text fragment.

Note that the [PageContents.IncludeColor](../../8-pagecontents/2-properties/includecolor.md) property must be set for this to be available. This is because processing color information adds a noticeable overhead that can be avoided for many text operations. If the property is not set then all text will be reported as black.
