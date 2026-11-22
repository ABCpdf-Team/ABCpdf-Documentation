# Object Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IndirectObject` | null | Yes | Gets the IndirectObject that is part of this [Element](../index.md). |

## Notes

Gets the IndirectObject that is part of this [Element](../index.md).

When an [Atom](03-atom.md) is provided during construction, this may be a reference to an IndirectObject rather than a direct reference to an [Atom](03-atom.md).

If this is the case then this property stores the referenced IndirectObject.

If the provided [Atom](03-atom.md) is not a RefAtom then this property will be null.
