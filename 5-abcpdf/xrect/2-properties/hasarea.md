# HasArea Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | n/a | Yes | Whether the rectangle has area. |

## Notes

Determine if the rectangle encloses any area.

If the width or height is less than the minimum resolution of the PDF coordinate space then the rectangle is defined as having no area. I it has no area it is simply a point.
