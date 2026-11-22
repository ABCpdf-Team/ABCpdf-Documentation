# CanPrint Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether a user can print the document. |

## Notes

This property determines if people who supply the user password can print the document.

Printing may not be available at the highest quality level if the [CanPrintHi](canprinthi.md) property is set to false.

This property is only applied if the [Type](type.md) is set to 1 or higher.

## Example

See the [Doc.Encryption](../../doc/2-properties/encryption.md) property.
