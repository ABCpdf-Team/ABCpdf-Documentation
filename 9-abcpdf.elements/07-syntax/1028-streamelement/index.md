# StreamElement Class

This class represents the stream. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 5, page 20.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 5, page 32.](https://www.iso.org/standard/63534.html)

This class is always an indirect object because it is also a StreamElement and these are always indirect objects.

A PDF stream consists of a stream dictionary followed by the keyword stream, the stream data bytes, and the keyword endstream. The stream dictionary must include a Length entry giving the exact number of bytes in the data.

Streams are used for any data that benefits from compression or that is too large to store as a string object. Content streams, image data, font data, ICC profiles, and many other PDF constructs are stored as streams.

The Filter entry names one or more filters applied to the stream data. When multiple filters are listed, they are applied in order during decoding: the first filter listed decodes the outermost encoding. The DecodeParms entry provides parameters for filters that require them.

The F, FFilter, and FDecodeParms entries support external streams where the data resides in a separate file rather than inline in the PDF. The F entry holds a file specification identifying the external file.

The DL entry gives the length of the decoded stream data. This is useful when an application needs to allocate a buffer before decoding but does not want to fully decode the stream just to determine its size.

A conforming writer must not write any bytes between the stream keyword and the data, except for a single end-of-line marker. Similarly, the endstream keyword must appear on a new line immediately after the last byte of data.

Stream filters defined in PDF include FlateDecode (zlib/deflate compression), LZWDecode, ASCIIHexDecode, ASCII85Decode, RunLengthDecode, CCITTFaxDecode, JBIG2Decode, DCTDecode, and JPXDecode. PDF 2.0 adds no new filters but deprecates LZWDecode for new content.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.StreamElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.TextStreamElement`](../0018-textstreamelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [StreamElement](1-methods/01-streamelement.md) | Create a new StreamElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryLength](2-properties/01-entrylength.md) | Represents the "Length" entry of the stream object. |
| [EntryFilter](2-properties/02-entryfilter.md) | Represents the "Filter" entry of the stream object. |
| [EntryDecodeParms](2-properties/03-entrydecodeparms.md) | Represents the "DecodeParms" entry of the stream object. |
| [EntryF](2-properties/04-entryf.md) | Represents the "F" entry of the stream object. |
| [EntryFFilter](2-properties/05-entryffilter.md) | Represents the "FFilter" entry of the stream object. |
| [EntryFDecodeParms](2-properties/06-entryfdecodeparms.md) | Represents the "FDecodeParms" entry of the stream object. |
| [EntryDL](2-properties/07-entrydl.md) | Represents the "DL" entry of the stream object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
