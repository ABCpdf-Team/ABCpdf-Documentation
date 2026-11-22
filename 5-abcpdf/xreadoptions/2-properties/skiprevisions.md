# SkipRevisions Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | Skip back a number of revisions when reading an incrementally saved PDF document. |

## Notes

Skip back a number of revisions when reading an incrementally saved PDF document.

PDF documents can be incrementally updated so that changes are appended to the document rather than overwriting the original. This means that it is possible to revert back to a previous version of the document. Setting this value allows you to skip back a specified number of revisions.

See the [IndirectObject.Revision](../../../6-abcpdf.objects/1-indirectobject/2-properties/5-revision.md) property and the [ObjectSoup.Revisions](../../../6-abcpdf.objects/2-objectsoup/2-properties/5-revisions.md) property for determining the number of revisions a document contains and the content which is associated with each revision.
