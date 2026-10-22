# BreakZoneSize Property

## Notes

This property applies to the MSHTML engine only.

The size of drawing area in which page breaks are allowed.

When HTML is added to a PDF page, it is placed within the current Doc.Rect.

In general, you do not want page breaks to occur too high up in this area. So ABCpdf only scans for good break locations towards the bottom.

This property determines how far up (in terms of a percentage) from the bottom that ABCpdf will scan for a good break location.

## Example

None.

