# CanFillForms Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether a user can fill forms in the document. |

## Notes

This property determines if people who supply the user password can fill forms in the document.

Filling forms is defined as filling in existing interactive form fields including signature fields. This is allowed even if the [CanEdit](canedit.md) property is set to false.

This property is only applied if the [Type](type.md) is set to 2 or higher.

## Example

See the [Doc.Encryption](../../doc/2-properties/encryption.md) property.
