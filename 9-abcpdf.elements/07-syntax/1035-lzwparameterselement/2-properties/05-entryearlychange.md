# EntryEarlyChange Property

## Notes

Represents the "EarlyChange" entry of the lzw parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 8, page 28.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 8, page 40.

The EarlyChange entry controls when the LZW encoder increases its code width. A value of 1 means the code width increases one code earlier than the standard LZW algorithm specifies. A value of 0 follows the standard timing.

The decoder must use the same EarlyChange setting as the encoder. Mismatched settings produce incorrect output without necessarily generating an error, making this entry critical for correct decoding.
