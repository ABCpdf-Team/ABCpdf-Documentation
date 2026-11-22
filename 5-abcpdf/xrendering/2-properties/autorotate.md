# AutoRotate Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether pages should be automatically rotated. |

## Notes

A PDF document may contain pages in portrait or landscape mode.

If the pages are in landscape mode the viewing application should rotate them by 90 degrees before displaying them.

If you use ABCpdf to render a landscape page then it will automatically apply the correct rotation. However if you want to disable this automatic rotation you can set this property to false.
