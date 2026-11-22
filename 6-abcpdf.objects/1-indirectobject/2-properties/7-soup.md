# Soup Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`ObjectSoup`](../../2-objectsoup/index.md) | n/a | Yes | The soup containing this IndirectObject. |

## Notes

The [ObjectSoup](../../2-objectsoup/index.md) containing this IndirectObject.

Note that although IndirectObjects are normally held inside a containing soup object it is possible to detach them from the container. If this is the case the value of the soup property will be null.
