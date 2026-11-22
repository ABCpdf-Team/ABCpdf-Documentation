# AddPages Function

Add pages to be processed.

## Syntax

```csharp
void AddPages()
void AddPages(int pageNumber)
void AddPages(int startPageNumber, int endPageNumber)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| pageNumber | The number of the page to be processed. This is a one based index. |
| startPageNumber | The number of the first page to be processed. This is a one based index. |
| endPageNumber | The number of the last page to be processed. This is a one based index. |

## Notes

This method adds pages that need to be processed. If the provided page numbers are incorrect then an exception will be raised.

The parameterless version of this function adds all the pages in the document. If you are only interested in a subsection of the document you can specify individual pages or a range of pages using the overloads. You can call this function multiple times with multiple sets of pages to get the precise selection that you require.

Adding pages is a fairly expensive operation. For this reason if you are performing multiple types of analysis on the same set of pages then you will probably want to share one PageContents object between them.

Note that the PageContents object is a cache of the current document content. Thus it may be invalidated by a call that remaps or replaces existing content in the document. For this reason you should not call [Doc.Save](../../../5-abcpdf/doc/1-methods/save.md), [Doc.GetData](../../../5-abcpdf/doc/1-methods/getdata.md) or [Doc.Flatten](../../../5-abcpdf/doc/1-methods/flatten.md) while using an operation that contains a PageContents object.

## Example

See [TextOperation.Group](../../8-textoperation/1-methods/group.md).

Also see example code in: [TextOperation Group Function](../../8-textoperation/1-methods/group.md), [ImageOperation GetImageProperties Function](../../9-imageoperation/1-methods/getimageproperties.md), [AccessibilityOperation AccessibilityOperation Constructor](../../c-accessibilityoperation/1-methods/1-accessibilityoperation.md).
