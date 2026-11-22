# Resolve Function

Resolves any indirect references and returns the Atom.

## Syntax

*C#*

[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)` Resolve(`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)` atom)`

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to resolve. |
| return | The final Atom or null if no Atom could be found. |

## Notes

[Atoms](../../../7-abcpdf.atoms/1-atom/index.md) come in two basic types. Data atoms like [NumAtoms](../../../7-abcpdf.atoms/numatom/index.md) and [NameAtoms](../../../7-abcpdf.atoms/nameatom/index.md) contain actual data. [RefAtoms](../../../7-abcpdf.atoms/refatom/index.md) contain a reference to an IndirectObject which contains another Atom.

Quite often you will want to resolve any RefAtoms and just obtain the Atom within the final IndirectObject - you want the final item of data rather than a reference to a piece of data.

This function takes an Atom. If it is a RefAtom it finds the Atom to which it points. It keeps doing this until it finds and returns the final data Atom in the chain.

This method may return null if null is passed in, if a RefAtom cannot be resolved or if a circular dependency is detected.

The reason this function is a member of the IndirectObject is because resolving RefAtoms requires access to the [ObjectSoup](../../2-objectsoup/index.md). The ObjectSoup is taken from the IndirectObject.
