# GetContentData Function

Gets the decompressed content data from the page.

## Syntax

*C#*

`byte[] GetContentData()`  
`byte[] GetContentData(`[`StreamObject`](../../streamobject/index.md)`[] contents)`

## Params

| Name | Description |
| :---: | --- |
| contents | The content streams from which to get the data. If null is passed all the Page content streams will be used. |
| return | The content data. |

## Notes

Gets the decompressed content data from the page.

If the page contains multiple content streams then the data from these will be concatenated so you can treat them as one.

However, while the data is concatenated, the streams are left untouched - the function does not alter the page.

If a content stream could not be decompressed then an exception will be raised.

If you need to go through all the content streams associated with a set of pages, the [ContentStreamOperation](../../../8-abcpdf.operations/g-contentstreamoperation/index.md) class provides this type of functionality.
