# Lengths Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Gets or sets the list to hold the lengths of lines. |

## Notes

Gets or sets the list to hold the lengths of lines.

If it is an array, the values are assigned starting at index 0;.

otherwise, the values are added using ICollection\<double>.Add.

No value will be provided if it is null.
