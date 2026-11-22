# PageID Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The destination Page ID associated with this bookmark. |

## Notes

When activated a bookmark will trigger an action. In most cases this will be a navigation action resulting in a new page being displayed.

The Page ID for the destination page is available via this property.

Occasionally you may come across bookmarks which have more complicated actions. In these cases this property will be zero.
