# FixFonts Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to attempt to fix font settings that may be required for accessibility. |

## Notes

Whether to attempt to fix font settings that may be required for accessibility.

Specifications like PDF/UA mandate certain requirements. One of the core requirements is that fonts are embedded rather than referenced.

This property controls whether an attempt will be made to embed any fonts that are referenced rather than embedded in the document.
