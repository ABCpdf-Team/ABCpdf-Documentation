# GetPage Function

Performs a fast lookup to retrieve a particular Page from this node tree

## Syntax

*C#*

[`Page`](../../page/index.md)` GetPage(int pageNumber)`

## Params

| Name | Description |
| :---: | --- |
| pageNumber | The page number - a one based index |
| returns | The specified Page object or null if one could not be found. |

## Notes

Performs a fast lookup to retrieve a particular Page from this node tree.

The page is specified in terms of the index of the page within the tree. This is a one-based index within the current Pages node. Since a Pages node relates to only a portion of a PDF document, the page number within the Pages node is offset from the page number within the document.
