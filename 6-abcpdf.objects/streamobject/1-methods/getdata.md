# GetData Function

## Syntax

[C#] byte[] GetData() byte[] GetData(bool decompressed)

## Params

## Notes

Get the raw binary content of the stream.

This method does not alter the content of the StreamObject so it is an efficient way of getting the data without altering the document.

If decompression is requested but could not be performed, then an exception will be raised. This can occur if the source data is corrupt.

## Example

None.

