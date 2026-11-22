# CanCopy Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether a user can copy from the document. |

## Notes

This property determines if people who supply the user password can copy from the document.

Copying is defined as copying, or otherwise extracting text and graphics from the document. If the [Type](type.md) is set to 3 and the [CanExtract](canextract.md) property is set to true then extracting text and graphics in support of accessibility to disabled users is allowed.

This property is only applied if the [Type](type.md) is set to 1 or higher.

## Example

See the [Doc.Encryption](../../doc/2-properties/encryption.md) property.

Also see example code in: [Doc Encryption Property](../../doc/2-properties/encryption.md).
