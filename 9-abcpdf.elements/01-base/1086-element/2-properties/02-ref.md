# Ref Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `RefAtom` | null | Yes | Gets any RefAtom that is part of this [Element](../index.md). |

## Notes

Gets any RefAtom that is part of this [Element](../index.md).

When an [Atom](03-atom.md) is provided during construction, this may be a reference to an IndirectObject rather than a direct reference to an [Atom](03-atom.md).

If this is the case then the reference needs to be resolved through to an [Atom](03-atom.md).

This property stores the original RefAtom and the [Atom](03-atom.md) property stores the resolved [Atom](03-atom.md) - usually a [DictAtom](06-dictatom.md).

If the provided [Atom](03-atom.md) is not a RefAtom then this property will be null.
