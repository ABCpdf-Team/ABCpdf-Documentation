# GetVerticalMetric Function

Get the vertical metric for a character.

## Syntax

[C#]

```csharp
<a href="../default.htm">VerticalMetric</a> GetVerticalMetric(int code)
```

## Params

| **Name** | **Description** |
| --- | --- |
| code | The native character code to get metrics for. |
| return | The vertical metrics. |

## Notes

Get the vertical metric for a character indexed by native character code.

The VerticalMetric structure consists of:

* Position - a vector or point used for positioning the glyph.
* Displacement - a vector or point to use for advancing the current text insertion point so that the next glyph can be positioned

Vertical metrics are only used when the [IsVertical](2-properties/isvertical.md) property is true.

## Example

None
