# NeedsFile Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | See description. | Yes | Whether the file needs to exist. |

## Notes

This property is true if the object has been created with an [XReadOptions](../../xreadoptions/index.md) with [ReadModule](../../xreadoptions/2-properties/1-readmodule.md) that uses an [Operation](../../xreadoptions/2-properties/operation.md) (whether [Operation](../../xreadoptions/2-properties/operation.md) is actually null or not) and the file specified is required to exist as long as the object is not cleared, disposed of, or garbage-collected. The object does not delete the file when it is disposed of.
