# GetResourcesByType Function

Get all the resources of a named type, optionally including any used by referenced objects.

## Syntax

*C#*

`ISet<`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)`> GetResourcesByType(string type, bool annotations, bool xobjects, bool patterns, bool parents, ISet<int> skip)`

## Params

| Name | Description |
| :---: | --- |
| type | The type of resource to be found. |
| annotations | Whether to include resources in annotations. |
| xobjects | Whether to include resources in referenced Form XObjects. |
| patterns | Whether to include resources in pattern dictionaries. |
| parents | Whether to include resources in parent objects. |
| skip | A set of IndirectObject IDs that should be skipped when performing the scan. May be null. |
| return | A set of matching resource Atoms. |

## Notes

Get all the resources of a named type, optionally including any used by referenced objects.

This can, for example, be used to find all the FontObjects referenced in the "Font" section of the page. Optionally you can include annotations, patterns, Form XObjects and parent objects in the scan and generally this is something you will want to do.

If you are performing multiple operations of this type you may wish to include a set of [IndirectObject](../../1-indirectobject/index.md) [IDs](../../1-indirectobject/2-properties/1-id.md) that should be skipped. On return the set will have been updated and all the new IndirectObjects that have been scanned will have been added.
