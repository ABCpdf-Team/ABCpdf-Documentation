# GetPageArrayAll Function

Gets all the Page objects under this node and descendents of this node.

## Syntax

*C#*

[`Page`](../../page/index.md)`[] GetPageArrayAll()`

## Params

| Name | Description |
| :---: | --- |
| return | An array of Page objects. |

## Notes

Gets all the [Page](../../page/index.md) objects under this node and descendents of this node. The pages are returned in order of page number. The [Page.ID](../../1-indirectobject/2-properties/1-id.md) can be assigned directly to the [Doc.Page](../../../5-abcpdf/doc/2-properties/page.md) property to set the focus to a particular page. For large or badly structured documents it is likely to be faster to use this type of operation than it is to repeatedly access the [Doc.PageNumber](../../../5-abcpdf/doc/2-properties/pagenumber.md) property.

For an array of the immediate children of this node see [GetPageArray](getpagearray.md).
