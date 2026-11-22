# CanChange Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether a user can modify the document. |

## Notes

This property determines if people who supply the user password can change the document.

Changing is defined as modifying the document in any way other than those controlled by the [CanEdit](canedit.md), [CanFillForms](canfillforms.md) or [CanAssemble](canassemble.md) properties.

This property is only applied if the [Type](type.md) is set to 1 or higher.

## Example

See the [Doc.Encryption](../../doc/2-properties/encryption.md) property.
