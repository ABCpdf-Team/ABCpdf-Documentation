# Compression Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `CompressionType` | See description. | Yes | The primary compression type. |

## Notes

A single stream can be compressed and encoded using multiple methods. This property reflects the primary compression type used by the stream.

Compression types which result in high levels of compression (e.g. JPEG) are considered more important than those that do not (e.g. ASCII 85).

The CompressionType enumeration may take the following values:

- None
- Unknown
- Flate
- Lzw
- Ccitt
- Jpeg
- Jpx
- AsciiHex
- Ascii85
- RunLength
- Jbig2
- Crypt

More details of these compression types can be found in Section 3.3 of the [Adobe PDF Specification](http://partners.adobe.com/).
