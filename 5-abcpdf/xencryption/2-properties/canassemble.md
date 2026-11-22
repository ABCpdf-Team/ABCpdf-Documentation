# CanAssemble Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether a user can assemble the document. |

## Notes

This property determines if people who supply the user password can assemble the document.

Assembling is defined as inserting, rotating or deleting pages; creating bookmarks or thumbnail images. This is allowed even if the [CanChange](canchange.md) property is set to false.

This property is only applied if the [Type](type.md) is set to 2 or higher.

## Example

See the [Doc.Encryption](../../doc/2-properties/encryption.md) property.
