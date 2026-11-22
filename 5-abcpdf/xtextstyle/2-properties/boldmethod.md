# BoldMethod Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `SyntheticBoldMethod` | PreferOutline | No | The method to use when applying a synthetic bold. |

## Notes

Determines what method to use when applying a synthetic bold.

The overlay method uses multiple items of text, each jogged a little over, to expand sideways. This has the advantage of keeping the character baseline the same but it can confuse some readers when it comes to copy and paste or text extraction. The concept of sideways is horizontal for horizontal text and vertical for vertical text.

The outline method is simpler and expands the text in all directions. This does not confuse PDF readers but it can result in subtle shifts in the baseline of the font.

This is a preference rather than a command because using the outline method is not always possible. For example, because it relies on a text rendering mode, if you intend to use the mode, it cannot.

The SyntheticBoldMethod enumeration may take the following values:

- PreferOverlay - Prefer a text overlay based synthetic bold.
- PreferOutline - Prefer an outline based synthetic bold.
