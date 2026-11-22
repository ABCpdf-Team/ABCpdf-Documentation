# NeedsStream Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | See description. | Yes | Whether the stream needs be kept open. |

## Notes

This property is true if the object has been created with an [XReadOptions](../../xreadoptions/index.md) with [ReadModule](../../xreadoptions/2-properties/1-readmodule.md) that uses an [Operation](../../xreadoptions/2-properties/operation.md) (whether [Operation](../../xreadoptions/2-properties/operation.md) is actually null or not) and the stream provided is required to be kept open and unmodified as long as the object is not cleared, disposed of, or garbage-collected. If it is true, the object has taken the ownership of the Stream, which is disposed of when the object is disposed of. You can make the object release the ownership without disposing of the Stream using the parameterized overloads of [Dispose](../1-methods/4-dispose.md) and [Clear](../1-methods/clear.md)
