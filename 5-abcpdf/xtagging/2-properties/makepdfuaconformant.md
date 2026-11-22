# MakePdfUAConformant Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to make the document PDF/UA conformant. |

## Notes

Whether to make the document PDF/UA conformant at the point it is saved.

Making the document conformant involves embedding fonts that are referenced, ensuring that fonts have a ToUnicode conversion table and inserting a PDF/UA flag in the XMP metadata.

## Example

None.

Also see example code in: [XTagging AddFocus Function](../1-methods/08-addfocus.md).
