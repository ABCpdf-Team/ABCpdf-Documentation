# GetTagUntransformedRects Function

Gets an array of the locations of tagged visible items before [Doc.Transform](../../doc/2-properties/transform.md) is applied.

## Syntax

*C#*

[`XRect`](../../xrect/index.md)`[] GetTagUntransformedRects(int id)`

## Params

| Name | Description |
| :---: | --- |
| id | The Object ID of the object. |
| return | The location (before Doc.Transform is applied) of tagged visible HTML objects. |

## Notes

Use this method to retrieve the locations of tagged visible items. The locations are to be used with the value of [Doc.Transform](../../doc/2-properties/transform.md) the same as when the ID is obtained.

To use this method you need to enable the tagging functionality. See the [AddTags](../2-properties/addtags.md) property for details.

This function takes an ID obtained from a call to [Doc.AddImageUrl,](../../doc/1-methods/addimageurl.md) [Doc.AddImageHtml](../../doc/1-methods/addimagehtml.md) or [Doc.AddImageToChain](../../doc/1-methods/addimagetochain.md) and returns the locations of any items which are visible on the PDF page as a result of that call.

The locations match up directly on a one-to-one basis with the IDs returned by the [GetTagIDs](gettagids.md) function.

## Example

See the [GetTagRects](gettagrects.md) method.
