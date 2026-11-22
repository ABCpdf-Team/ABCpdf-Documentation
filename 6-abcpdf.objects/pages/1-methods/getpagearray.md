# GetPageArray Function

Gets all the Page objects immediately under this node.

## Syntax

*C#*

[`Page`](../../page/index.md)`[] GetPageArray()`

## Params

| Name | Description |
| :---: | --- |
| return | An array of Page objects. |

## Notes

Gets all the [Page](../../page/index.md) objects under this node.

Only immediate children are returned. Any Pages objects are returned as null Page objects.

For an array that includes descendents see [GetPageArrayAll](getpagearrayall.md).
