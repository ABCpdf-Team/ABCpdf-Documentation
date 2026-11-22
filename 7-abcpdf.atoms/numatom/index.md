# NumAtom Class

An Atom representing a numeric value.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Atoms.Atom`](../1-atom/index.md)  
`       WebSupergoo.ABCpdf14.Atoms.NumAtom`

`Implements: IEquatable<NumAtom>, IComparable<NumAtom>`

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [Encode](1-methods/encode.md) | Encode a number into a PDF string. This format may be needed for direct insertion into a content stream. |
| [Equals](1-methods/equals.md) | Test whether the two NumAtoms are the same. |
| [NumAtom](1-methods/numatom.md) | Construct a NumAtom. |
|  | [inherited methods...](../1-atom/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Num](2-properties/num.md) | The integer value of the number. |
| [Num64](2-properties/num64.md) | The 64-bit integer value of the number. |
| [Real](2-properties/real.md) | The floating point value of the number. |
| [IsInt](2-properties/isint.md) | Whether the number was last assigned in integer rather than real format. |
| [ValidAsInt32](2-properties/validasint32.md) | Whether the number is representable as a 32 bit integer. |
| [ValidAsInt64](2-properties/validasint64.md) | Whether the number is representable as a 64 bit integer. |
|  | [inherited properties...](../1-atom/index.md) |
