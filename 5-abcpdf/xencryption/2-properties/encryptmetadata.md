# EncryptMetadata Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to encrypt the document metadata for encryption levels of [type](type.md) 4 or above. |

## Notes

This property determines whether the document metadata is encrypted. It is in effect only when [Type](type.md) is 4 or above.

The document metadata can be saved unencrypted so that tools that do not support PDF encryption can still index/process the document using the metadata.
