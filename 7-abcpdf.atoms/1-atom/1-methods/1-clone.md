# Clone Function

Creates a deep copy of the current Atom.

## Syntax

*C#*

[`Atom`](../index.md)` Clone()`

## Params

| Name | Description |
| :---: | --- |
| return | The newly created copy. |

## Notes

This function creates a new object that is a copy of this instance.

The copy is a deep copy and all contained Atoms are copied as part of the clone process.

The copy stops at [RefAtoms](../../refatom/index.md). Each RefAtom is copied, so the copy has RefAtoms of its own, but they continue to refer to the same [IndirectObjects](../../../6-abcpdf.objects/1-indirectobject/index.md) as the originals. The IndirectObjects themselves are separate objects and are not copied.
