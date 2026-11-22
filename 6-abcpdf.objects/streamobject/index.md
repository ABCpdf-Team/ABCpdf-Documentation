# StreamObject Class

A PDF data stream.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       WebSupergoo.ABCpdf14.Objects.StreamObject`  
`          `[`WebSupergoo.ABCpdf14.Objects.D3DStream`](../d3dstream/index.md)  
`          `[`WebSupergoo.ABCpdf14.Objects.EmbeddedFile`](../embeddedfile/index.md)  
`          `[`WebSupergoo.ABCpdf14.Objects.FormXObject`](../formxobject/index.md)  
`          `[`WebSupergoo.ABCpdf14.Objects.IccProfile`](../iccprofile/index.md)  
`          `[`WebSupergoo.ABCpdf14.Objects.Layer`](../layer/index.md)  
`          `[`WebSupergoo.ABCpdf14.Objects.Metadata`](../metadata/index.md)  
`          `[`WebSupergoo.ABCpdf14.Objects.PixMap`](../pixmap/index.md)

`Implements: IEquatable<StreamObject>`

## Methods

| Method | Description |
| --- | --- |
| ⚠ [StreamObject](1-methods/1-streamobject.md) | StreamObject Constructor. |
| [ClearData](1-methods/cleardata.md) | Clear the data and compression settings for the stream. |
| [ClearCachedDecompressed](1-methods/clearcacheddecompressed.md) | Clear the cached, decompressed data for the stream. |
| [Compress](1-methods/compress.md) | Compress the data in the stream. |
| [CompressAscii85](1-methods/compressascii85.md) | Compress the data in the stream using ASCII 85 encoding. |
| [CompressAsciiHex](1-methods/compressasciihex.md) | Compress the data in the stream using the ASCII Hex encoding. |
| [CompressBrotli](1-methods/compressbrotli.md) | Compress the data in the stream using Brotli compression. |
| [CompressFlate](1-methods/compressflate.md) | Compress the data in the stream using Flate compression. |
| [CompressRunLength](1-methods/compressrunlength.md) | Compress the data in the stream using run length encoding. |
| [CopyDecompressedData](1-methods/copydecompresseddata.md) | Copy the decompressed binary content of the stream into a byte array. |
| [Decompress](1-methods/decompress.md) | Decompress the data in the stream. |
| [GetData](1-methods/getdata.md) | Get the raw binary content of the stream. |
| [GetText](1-methods/gettext.md) | Get the content of the stream as a string. |
| [SetData](1-methods/setdata.md) | Set the raw binary content of the stream. |
| ⚠ [SetFile](1-methods/setfile.md) | Set the raw binary content of the stream using data from a file. |
| [SetText](1-methods/settext.md) | Set the content of the stream as a string. |
|  | [inherited methods...](../1-indirectobject/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Compressed](2-properties/compressed.md) | Whether the stream data is compressed or otherwise encoded. |
| [Compression](2-properties/compression.md) | The primary compression type. |
| [Compressions](2-properties/compressions.md) | All the compression types applied to the stream. |
| [Length](2-properties/length.md) | The number of bytes of encoded stream data. |
|  | [inherited properties...](../1-indirectobject/index.md) |
