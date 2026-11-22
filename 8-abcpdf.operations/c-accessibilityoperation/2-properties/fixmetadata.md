# FixMetadata Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to attempt to fix or add metadata that may be required for accessibility. |

## Notes

Whether to attempt to fix or add metadata that may be required for accessibility.

Specifications like PDF/UA mandate certain requirements. One of the core requirements is that XMP metadata is embedded in the document.

This property controls whether an attempt will be made to add any such data. Information for the XMP section will be extracted from the info section of the PDF. A PDF/UA tag will be added as will other required features like a title.
