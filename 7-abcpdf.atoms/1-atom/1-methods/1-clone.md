# Clone Function

## Syntax

[C#] Atom Clone()

## Params

## Notes

This function creates a new object that is a copy of this instance.

The copy is a deep copy and all contained Atoms are copied as part of the clone process.

The copy stops at RefAtoms. Each RefAtom is copied, so the copy has RefAtoms of its own, but they continue to refer to the same IndirectObjects as the originals. The IndirectObjects themselves are separate objects and are not copied.

## Example

None.

