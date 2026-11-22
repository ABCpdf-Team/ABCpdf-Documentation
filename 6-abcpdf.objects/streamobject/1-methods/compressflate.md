# CompressFlate Function

Compress the data in the stream using Flate compression.

## Syntax

```csharp
bool CompressFlate()
bool CompressFlate(bool force)
bool CompressFlate(bool force, int compressionLevel)
```

## Params

| Name | Description |
| :---: | --- |
| force | Whether to force the stream to be compressed in this way. |
| compressionLevel | The level of compression to apply as a percentage. Smaller numbers are faster but produce lower compression ratios. Pass -1 for a default choice. |
| return | Whether the compression was applied. |

## Notes

Compress the data in the stream using Flate compression.

Flate compression is a standard, fast and efficient lossless compression method. It is used as the basis of file formats like ZIP and image formats like PNG. In most situations this is the method you should prefer.

PDF streams allow a set of compression filters to be applied to a stream of data. For example one might want to apply Flate compression and then ASCII85 encode the result. This is represented as two compression filters in sequence.

This function does not decompress the stream. So if compression is already present, then this method will compress the already-encoded data and append a compression specification to the sequence.

ABCpdf tries to avoid creating certain compression sequences. Some compression types on some objects are illegal. Some sequences are legal but not supported within Acrobat (though they are in most other viewers). However these are unusual situations and you are unlikely to ever see them.

You can override this behavior by forcing the compression to take place. However if you do this you may end up creating a document which is invalid or unviewable in Acrobat.

The compression level parameter controls the intensity of Flate compression applied to the current page content stream. Lower values execute faster but yield lower compression ratios, while higher values produce smaller output at the cost of speed. Passing -1 instructs the method to use a default compression level determined by the library.

## Example

Also see example code in: [OpAtom Find Function](../../../7-abcpdf.atoms/opatom/1-methods/find.md).
