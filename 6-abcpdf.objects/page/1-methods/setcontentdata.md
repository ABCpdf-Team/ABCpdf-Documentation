# SetContentData Function

Sets the content data for the page.

## Syntax

*C#*

[`StreamObject`](../../streamobject/index.md)` SetContentData(byte[] buffer, bool compress)`  
[`StreamObject`](../../streamobject/index.md)` SetContentData(byte[] buffer, int index, int count, bool compress)`

## Params

| Name | Description |
| :---: | --- |
| buffer | The bytes containing the data to be set. |
| compress | Whether the new stream should be Flate compressed. |
| index | The byte offset in buffer, at which to begin copying bytes to the page contents. The default is zero. |
| count | The number of bytes to be written to the page contents. The default is the buffer.Length. |
| return | The stream containing the data. |

## Notes

Sets the content data for the page.

You can specify a subset of the bytes in the array as the data for the content stream.

If the data for the current page is the same as that provided then nothing will be done and the existing stream will be returned.
