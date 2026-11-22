# Item(int index) Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `T` | null | No | Gets or sets the items at the specified index. |

⚠ `ArgumentOutOfRangeException: Thrown if the index provided is not valid.`

## Notes

Gets or sets the items at the specified index. In C# this property is the indexer for the class.

The Item property is used to access items within the Array.

The ArrayAtom is accessed and used to create a value of type T.

If the type indicated is string then a null string will be interpreted as an empty string.

If the type indicated is a double? then a null value will be interpreted as a NullAtom.

All other types are non-nullable.
