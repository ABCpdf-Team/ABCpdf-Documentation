# Atom Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`Atom`](../../../7-abcpdf.atoms/1-atom/index.md) | n/a | No | The Atom contained by the IndirectObject. |

## Notes

The [Atom](../../../7-abcpdf.atoms/1-atom/index.md) contained by the IndirectObject.

Atoms can only be contained by one object at a time. So - if you assign a new Atom to this property and the supplied Atom is currently contained by another object - a clone of the Atom will be inserted rather than a reference to the original.
