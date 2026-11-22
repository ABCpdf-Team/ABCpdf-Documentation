# RefOrAtom Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Atom`](03-atom.md) | null | Yes | Gets the [Atom](03-atom.md) that was used to create this [Element](../index.md). |

## Notes

Gets the [Atom](03-atom.md) that was used to create this [Element](../index.md).

When an [Atom](03-atom.md) is provided during construction, this may be a reference to an IndirectObject rather than a direct reference to an [Atom](03-atom.md).

If this is the case then the reference needs to be resolved through to an [Atom](03-atom.md).

The [Ref](02-ref.md) property stores the RefAtom, if one was provided. The [Atom](03-atom.md) property stores the resolved [Atom](03-atom.md).

This property will return the [Ref](02-ref.md) if it is not null, or the [Atom](03-atom.md) if it is.
