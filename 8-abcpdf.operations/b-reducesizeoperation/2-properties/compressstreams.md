# CompressStreams Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to compress uncompressed streams where possible. |

## Notes

Whether to compress uncompressed streams where possible.

Uncompressed streams are relatively uncommon in real world PDF documents but checking and compressing them is a simple and effective way to reduce size in the unusual situations in which they are found.
