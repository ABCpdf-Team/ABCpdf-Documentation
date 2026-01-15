# GetTagUntransformedRects Function

## Syntax

```csharp
<a href="../../xrect/default.htm">XRect</a>[] GetTagUntransformedRects(int id)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the object. |
| return | The location (before Doc.Transform is applied) of tagged visible HTML objects. |

## Notes

Use this method to retrieve the locations of tagged visible items. The locations are to be used with the value of Doc.Transform the same as when the ID is obtained.

To use this method you need to enable the tagging functionality. See the AddTags property for details.

This function takes an ID obtained from a call to Doc.AddImageUrl, Doc.AddImageHtml or Doc.AddImageToChain and returns the locations of any items which are visible on the PDF page as a result of that call.

The locations match up directly on a one-to-one basis with the IDs returned by the GetTagIDs function.

