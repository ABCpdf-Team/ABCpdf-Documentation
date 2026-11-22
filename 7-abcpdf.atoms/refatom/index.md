# RefAtom Class

An Atom which references an [IndirectObject](../../6-abcpdf.objects/1-indirectobject/index.md).

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Atoms.Atom`](../1-atom/index.md)  
`       WebSupergoo.ABCpdf14.Atoms.RefAtom`

`Implements: IEquatable<RefAtom>, IComparable<RefAtom>`

## Methods

| Method | Description |
| --- | --- |
| [RefAtom](1-methods/1-refatom.md) | Construct a RefAtom. |
| [Assign](1-methods/assign.md) | Set the IndirectObject that the reference should point to. |
| [Equals](1-methods/equals.md) | Test whether the two RefAtoms are the same. |
| [Resolve](1-methods/resolve.md) | Get the IndirectObject that the reference is pointing to. |
|  | [inherited methods...](../1-atom/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [ID](2-properties/1-id.md) | The ID of the referenced IndirectObject. |
| [Gen](2-properties/2-gen.md) | The generation of the referenced IndirectObject. |
|  | [inherited properties...](../1-atom/index.md) |
