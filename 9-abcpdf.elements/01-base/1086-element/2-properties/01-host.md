# Host Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IndirectObject` | null | Yes | Gets the host IndirectObject. |

## Notes

Gets the host IndirectObject.

The host is specified during construction or in a later call to [Assign](../1-methods/02-assign.md).

The host is primarily used to indicate the document to which the [Element](../index.md) belongs.

As such it can be any IndirectObject in the document.

However it is often useful to choose one which is closely associated with the [Atom](03-atom.md) provided.

For example, if you create an [Element](../index.md) from an IndirectObject, the Host can be itself.
