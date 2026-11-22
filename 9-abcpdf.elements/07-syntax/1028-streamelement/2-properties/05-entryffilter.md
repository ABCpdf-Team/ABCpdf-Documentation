# EntryFFilter Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "FFilter" entry of the stream object. |

## Notes

Represents the "FFilter" entry of the stream object.

It is an optional entry defined as part of the PDF 1.2 specification.

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

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 5, page 20.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 5, page 32.](https://www.iso.org/standard/63534.html)

The FFilter entry names the filter or filters applied to the external file stream referenced by F. It has the same structure and semantics as the Filter entry but applies to the external file data.
