# EntryFilter Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "Filter" entry of the stream object. |

## Notes

Represents the "Filter" entry of the stream object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF name objects.

Items in this array may take one of the following valid values:.

- ASCIIHexDecode
- ASCII85Decode
- LZWDecode
- FlateDecode
- RunLengthDecode
- CCITTFaxDecode
- JBIG2Decode
- DCTDecode
- JPXDecode
- Crypt

.

If you read the specification you will see that an array of one string may be represented as a single string rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

The array controls decompression settings.

Each item in the array represents a filter, a compression type, applied to the data in the stream.

Mutiple filters can be applied to chain compression types. For example you might wish to apply first Flate compression and then ASCII85 encoding.

As new filters are applied to the data, the names are added at the start of the array. So the array represents the order required to decode.

For example if you applied Flate and then ASCII85 encoding, the first item would be ASCII85Decode and the second FlateDecode.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 5, page 20.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 5, page 32.](https://www.iso.org/standard/63534.html)

The Filter entry names the filter or filters applied to encode the stream data. When a single filter is used it may be given as a name; when multiple filters are used it must be an array of names applied in order from innermost to outermost.

A decoder reverses the filters in the order listed: the first-named filter is applied last during encoding and first during decoding.
