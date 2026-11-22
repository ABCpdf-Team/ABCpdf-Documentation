# Revisions Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | Yes | The number of incremental updates. |

## Notes

The number of incremental updates.

No object in the collection will have an [IndirectObject.Revision](../../1-indirectobject/2-properties/5-revision.md) higher than this.

However it is possible, though unusual, for some revisions to have no objects.
