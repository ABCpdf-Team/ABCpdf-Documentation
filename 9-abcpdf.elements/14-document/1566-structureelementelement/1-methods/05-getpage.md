# GetPage Function

Get the Page object for this particular structure element.

## Syntax

[C#]

```csharp
<a href="../../../../6-abcpdf.objects/page/default.htm">Page</a> GetPage()<a href="../../../../6-abcpdf.objects/page/default.htm">Page</a> GetPage(Accessibility.Structure structure)
```

## Params

| **Name** | **Description** |
| --- | --- |
| structure | The structure which this element is part of. |
| return | The page. |

## Notes

Get the Page object for this particular structure element.

In the event that there is no specified page the function will look up through the parent hierarchy in the structure to find one.

If still no page is found it will scan through the hierarchy assigning pages to all the elements and then return one.

In the unlikely event that no page can be found, it will return null.

## Example

None
