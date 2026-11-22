# IDHexadecimal Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to assign non-ASCII file identifiers. |

## Notes

This property determines if file identifiers should be hexadecimal or ASCII.

File identifiers take the form of strings. The characters in these strings can span any range. However some applications demand that identifiers are restricted to the ASCII range while some demand that identifiers contain characters outside the ASCII range.

Setting this value to false will allow you to restrict newly generated identifiers to the ASCII range.
