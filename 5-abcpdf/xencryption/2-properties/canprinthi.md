# CanPrintHi Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether a user can print a high resolution copy of the document. |

## Notes

This property determines if people who supply the user password can print a high resolution copy of the document.

When this property is set to false and the [CanPrint](canprint.md) property is set to true printing is limited to a lower quality representation of the document.

This property is only applied if the [Type](type.md) is set to 2 or higher.

## Example

See the [Doc.Encryption](../../doc/2-properties/encryption.md) property.
