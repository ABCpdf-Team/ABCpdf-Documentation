# GetTagIDs Function

Gets an array of the HTML IDs of tagged visible items.

## Syntax

```csharp
string[] GetTagIDs(int id)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the object. |
| return | The IDs of tagged visible HTML objects. |

## Notes

Use this method to retrieve the HTML IDs of tagged visible items.

To use this method you need to enable the tagging functionality. See the AddTags property for details.

This function takes an ID obtained from a call to Doc.AddImageUrl, Doc.AddImageHtml or Doc.AddImageToChain and returns the IDs of any items which are visible on the PDF page as a result of that call.

For example the ID associated with the following paragraph is "p1".

<p id="p1" style="abcpdf-tag-visible: true">Gallia est omnis divisa in partes tres.<p>

The IDs may be repeated if the objects are split over more than one area.

The IDs match up directly on a one-to-one basis with the XRects returned by the GetTagRects or the GetTagUntransformedRects function.

