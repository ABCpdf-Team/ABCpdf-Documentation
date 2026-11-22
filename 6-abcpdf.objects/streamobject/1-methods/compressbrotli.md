# CompressBrotli Function

Compress the data in the stream using Brotli compression.

## Syntax

```csharp
bool CompressBrotli(int compressionLevel = 11)
```

## Params

| Name | Description |
| :---: | --- |
| compressionLevel | The compression level from 0 (no compression) through to 11. |
| return | Whether the compression was applied. |

## Notes

Compress the data in the stream using Brotli compression.

This is an extension to PDF 2.0 which is likely to be incorporated in future PDF specifications. As such it should only be used for special purposes where your PDFs are designed for consumption by other software supporting this extension.

Brotli is a general-purpose compression algorithm combining LZ77, Huffman coding, and context modeling, with a larger window than Flate, letting it exploit longer-range matches in large files. It typically compresses text-heavy data better than Flate, but is slower to compress and its built-in static dictionary is tuned for web-like text, so gains shrink on binary data.

PDF streams allow a set of compression filters to be applied to a stream of data. For example one might want to apply Brotli compression and then ASCII85 encode the result. This is represented as two compression filters in sequence.

This function does not decompress the stream. So if compression is already present, then this method will compress the already-encoded data and append a compression specification to the sequence.

ABCpdf tries to avoid creating certain compression sequences. Some compression types on some objects are illegal. Some sequences are legal but not supported within Acrobat (though they are in most other viewers). However these are unusual situations and you are unlikely to ever see them.

The compression level parameter controls the intensity of Brotli compression applied to the current page content stream. Lower values execute faster but yield lower compression ratios, while higher values produce smaller output at the cost of speed.
