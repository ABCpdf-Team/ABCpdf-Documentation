# Doc Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`Doc`](../../../5-abcpdf/doc/index.md) | n/a | Yes | The Doc containing this IndirectObject. |

## Notes

The [Doc](../../../5-abcpdf/doc/index.md) containing this IndirectObject.

Note that although IndirectObjects are normally held inside a containing Doc object it is possible to detach them from the container. If this is the case the value of the Doc property will be null.
