# AllowIntentChanges Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether content in the PDF is allowed to override the rendering intent. |

## Notes

The default rendering intent for the operation is determined by the [RenderingIntent](renderingintent.md) property.

However the rendering intent is part of the PDF graphics state and as such, operators in the page content stream may sometimes set it to a different value.

This property allows you to decide whether you will allow this type of change or whether it should be ignored.
