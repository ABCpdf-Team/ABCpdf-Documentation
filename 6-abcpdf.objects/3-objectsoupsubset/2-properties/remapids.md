# RemapIDs Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `IDictionary<int, int>` | n/a | Yes | Gets the dictionary used to map object IDs from the source soup to new object IDs in the final soup. |

## Notes

Gets the dictionary used to map object IDs from the source soup to new object IDs in the final soup.

Some mappings may be populated via the [RemapTypes](remaptypes.md) as [IndirectObjects](../../1-indirectobject/index.md) are added. Most will be populated at the point that the [CopyTo](../1-methods/2-copyto.md) method is called.
