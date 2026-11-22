# BreakZoneSize Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 75 | No | The percentage of the current drawing area in which HTML breaks can occur. |

## Notes

This property applies to the [MSHTML](2-formshtml.md) engine only.

The size of drawing area in which page breaks are allowed.

When HTML is added to a PDF page, it is placed within the current [Doc.Rect](../../doc/2-properties/rect.md).

In general, you do not want page breaks to occur too high up in this area. So ABCpdf only scans for good break locations towards the bottom.

This property determines how far up (in terms of a percentage) from the bottom that ABCpdf will scan for a good break location.
