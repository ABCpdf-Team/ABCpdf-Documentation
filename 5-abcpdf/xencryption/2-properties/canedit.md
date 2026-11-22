# CanEdit Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether a user can edit the document. |

## Notes

This property determines if people who supply the user password can edit the document.

Editing is defined as adding or modifying text annotations, filling in interactive form fields and if the [CanChange](canchange.md) property is set, creating or modifying interactive form fields including signature fields.

This property is only applied if the [Type](type.md) is set to 1 or higher.

## Example

See the [Doc.Encryption](../../doc/2-properties/encryption.md) property.
