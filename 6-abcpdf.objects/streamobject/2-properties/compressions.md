# Compressions Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `CompressionType`\[\] | See description. | Yes | All the compression types applied to the stream. |

## Notes

A stream can be compressed and encoded using multiple methods applied in sequence.

This property reflects all the compression types that have been applied to the stream.

The [CompressionTypes](compression.md) are ordered in terms of the complete decompression sequence required.
