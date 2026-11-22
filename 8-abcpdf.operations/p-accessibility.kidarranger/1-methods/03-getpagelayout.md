# GetPageLayout Function

Get a set of areas corresponding to a standard page layout.

## Syntax

```csharp
static List<XRect> GetPageLayout(XRect page, double marginV, double marginH, int columns)
```

## Params

| Name | Description |
| :---: | --- |
| page | The page from which to generate areas. |
| marginV | The height of the header and footer. |
| marginH | The width of the left and right margins. |
| columns | The number of columns on the page. |
| return | A list of areas. |

## Notes

Get a set of areas corresponding to a standard page layout.

You can specify a header and footer area, page margins and a number of columns.
