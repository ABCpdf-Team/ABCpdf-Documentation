# StringAtom Class

An Atom representing a text value.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Atoms.Atom`](../1-atom/index.md)  
`       WebSupergoo.ABCpdf14.Atoms.StringAtom`

`Implements: IEquatable<StringAtom>, IComparable<StringAtom>`

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [Encode](1-methods/encode.md) | Encode a string into a format for use in a content stream using a normal or simple font. |
| Ⓢ [EncodeDoubleByte](1-methods/encodedoublebyte.md) | Encode a string into a format for use in a content stream using a composite font with a double byte CMap. |
| Ⓢ [DateToString](1-methods/datetostring.md) | Convert a DateTime into a standard PDF date string. |
| Ⓢ [StringToDate](1-methods/stringtodate.md) | Convert a standard PDF date string into a DateTime. |
| [StringAtom](1-methods/stringatom.md) | Construct a StringAtom. |
| Ⓢ [Decode](1-methods/decode.md) | Decode a PDF encoded string into a plain string format. |
| Ⓢ [DecodeDoubleByte](1-methods/decodedoublebyte.md) | Decode a double byte PDF encoded string into a plain string format. |
| [Equals](1-methods/equals.md) | Test whether the two StringAtoms are the same. |
| [ToString](1-methods/tostring.md) | The string representation of the StringAtom as it would appear in a PDF. |
|  | [inherited methods...](../1-atom/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Text](2-properties/text.md) | The text of the string. |
| [Data](2-properties/data.md) | The raw un-encoded bytes of the string. |
|  | [inherited properties...](../1-atom/index.md) |
