# IDUpdate Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to update the file version identifier. |

## Notes

This property determines if the file version identifier should be updated.

PDF documents have two unique file identifiers. One is a file specific identifier which stays constant throughout the life of the file. The other is a file version identifier which is updated every time the document is saved.

This property allows you to suppress the version update.
