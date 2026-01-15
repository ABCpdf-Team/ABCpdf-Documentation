# AddRect Function

Add a rectangle to the current page.

## Syntax

```csharp
int AddRect(bool filled)
```

## Params

| Name | Description |
| --- | --- |
| filled | Whether to fill the rectangle rather than simply outline it. |
| return | The Object ID of the newly added Graphic Object. |

## Notes

Add a rectangle drawn in the current color at the current width and with the current options. The rectangle may be outlined or filled.

Note that this is subtly different from the way that FrameRect works. When a rectangle is framed the line goes around the outside of the rectangle. When a rectangle is added the line is centered on the rectangle - so half is inside and half is outside.

