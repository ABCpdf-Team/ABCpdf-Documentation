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

Adds a rectangle using the current color, line width, and options. The rectangle may be outlined or filled.

This differs from `FrameRect`: `FrameRect` draws around the outside; `AddRect` centers the stroke on the rectangle edge (half inside, half outside).

## Example

None.
