# AdjustLayout Property

## Notes

This property applies to the MSHTML engine only.

This property determines whether HTML layout is checked and adjusted for optimal output to PDF.

HTML layout is optimized for screen based output on a scrolling display. Certain types of percentage based sizing can give rise to situations in which the proportions of the different elements do not add up to 100%. On screen this type of confused layout is less noticable than it is on a paged medium like PDF.

When set the document is scanned for typical layout based errors and these are fixed.

However if you are not using these features then skipping the adjustment stage can save time with no noticable change in output quality.

## Example

None.

