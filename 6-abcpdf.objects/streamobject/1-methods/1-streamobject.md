# StreamObject Constructor

StreamObject Constructor.

## Syntax

*C#*

[`StreamObject`](../index.md)`(`[`ObjectSoup`](../../2-objectsoup/index.md)` soup)`  
[`StreamObject`](../index.md)`(`[`ObjectSoup`](../../2-objectsoup/index.md)` soup, byte[] data)`  
[`StreamObject`](../index.md)`(`[`ObjectSoup`](../../2-objectsoup/index.md)` soup, string path)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| soup | The ObjectSoup to contain the newly created StreamObject. |
| data | An array of bytes which should be placed in the StreamObject. |
| path | A path to a file containing data which should be placed in the StreamObject. |

## Notes

Create a StreamObject.

If no arguments are passed then the StreamObject contains no data. No exception will be thrown.

If an array of bytes is passed then the StreamObject data will be initialized with the contents of the array. No exception will be thrown.

If a string is passed then the StreamObject data will be initialized with the contents of the file. If the file cannot be read then an exception is thrown.
