# Refresh Method

Refresh and reload the document Bookmarks.

## Syntax

```csharp
void Refresh()
```

## Params

| Name | Description |
| :---: | --- |
| return | n/a. |

## Notes

Use this method to refresh and reload all Bookmarks in the list.

When a bookmark is first referenced the bookmark data from the PDF is cached. This allows a level of optimization which would not otherwise be possible.

However if you are using the low level functionality to modify the bookmark structure the cache will not reflect your changes. In this situation you can force the bookmarks to be reloaded by calling Refresh.
