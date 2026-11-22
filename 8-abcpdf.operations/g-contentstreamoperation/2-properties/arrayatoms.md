# ArrayAtoms Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IDictionary<`[`IndirectObject`](../../../6-abcpdf.objects/1-indirectobject/index.md)`, `[`ArrayAtom`](../../../7-abcpdf.atoms/arrayatom/index.md)`>` | An IDictionary. | Yes | The content streams for the items that have been found. |

## Notes

The content streams for the items that have been found.

These are stored as a dictionary mapping the owning object with the content stream.

The content stream itself is represented as a series of graphics operators converted using the [ArrayAtom.FromContentStream](../../../7-abcpdf.atoms/arrayatom/1-methods/fromcontentstream.md) method.
