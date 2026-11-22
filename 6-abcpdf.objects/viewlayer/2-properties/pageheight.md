# PageHeight Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | Yes | The height of the content on the current page in pixels. |

## Notes

The height of the content on the current page.

Note that the content may not vertically completely fill the area into which the view has been drawn.

This may occur if the page is has been broken early to ensure that content is split at a sensible location. Or alternatively, it may occur if the content was not as tall as the area specified while it horizontally fills the area.
