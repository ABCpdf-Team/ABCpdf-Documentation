# Flatten Function

Flattens and compresses the current page.

## Syntax

```csharp
int Flatten()
```

## Params

| Name | Description |
| --- | --- |
| return | n/a. |

## Notes

Objects added to a page are stored as individual layers. Calling this method combines all the layers on the current page and then re-compresses the layer data.

For pages that contain only a few layers the reduction in size will be minimal. However for pages which contain complex tables with many items, flattening can reduce the size of the output PDF by a factor of five or more.

Note that flattening will delete all the items currently on the page and replace them with a new compressed item. This means that Object IDs previously obtained from calls such as AddText or FrameRect will no longer be valid.

