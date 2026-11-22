# Page Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Page`](../../page/index.md) | 0 | No | The destination Page associated with this bookmark. |

## Notes

When activated a bookmark will trigger an action. In most cases this will be a navigation action resulting in a new page being displayed.

The Page object for the destination page is available via this property.

Occasionally you may come across bookmarks which have more complicated actions. In these cases this property will be null.
