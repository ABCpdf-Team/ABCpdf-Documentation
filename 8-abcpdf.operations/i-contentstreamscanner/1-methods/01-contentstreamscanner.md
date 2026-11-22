# ContentStreamScanner Function

Create a new [ContentStreamScanner](../index.md).

## Syntax

*C#*

[`ContentStreamScanner`](../index.md)`()`  
[`ContentStreamScanner`](../index.md)`(`[`ContentStreamScanner`](../index.md)` sibling)`

## Params

| Name | Description |
| :---: | --- |
| sibling | A scanner which contains cached data. |

## Notes

Create a new [ContentStreamScanner](../index.md).

A [ContentStreamScanner](../index.md) will cache useful resources as they are needed. If you are creating multiple [ContentStreamScanners](../index.md) for the same document you can share this cache to increase efficiency.

To share cached data in this way pass in a sibling scanner previously used to scan a content stream in the same doc.
