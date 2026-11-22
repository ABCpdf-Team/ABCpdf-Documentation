# AtomicTypes Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `AtomicTypes` | null | No | The Type of elements within the Array. |

## Notes

The Type of elements within the Array.

This indicates the types of Atom that are acceptable in this Array.

For example an AtomicArray of strings may accept NameAtoms, or StringAtoms or indeed both.

This is a flags based enum so more than one type may be indicated by combining values.

The AtomicTypes enumeration may take the following values:

- None - No types are specified.
- Names - The array may contain names (NameAtom).
- Strings - The array may contain strings (StringAtom).
- Numbers - The array may contain numbers (NumAtom).
- Booleans - The array may contain booleans (BoolAtom).
