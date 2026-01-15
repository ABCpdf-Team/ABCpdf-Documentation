# AllowIntentChanges Property

&nbsp;

## Notes

The default rendering intent for the operation is determined by the RenderingIntent property.

However the rendering intent is part of the PDF graphics state and as such, operators in the page content stream may sometimes set it to a different value.

This property allows you to decide whether you will allow this type of change or whether it should be ignored.

