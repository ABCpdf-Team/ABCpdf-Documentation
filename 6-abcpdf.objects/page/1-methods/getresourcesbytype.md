# GetResourcesByType Function

## Syntax

[C#] ISet<Atom> GetResourcesByType(string type, bool annotations, bool xobjects, bool patterns, bool parents, ISet<int> skip)

## Params

## Notes

Get all the resources of a named type, optionally including any used by referenced objects.

This can, for example, be used to find all the FontObjects referenced in the "Font" section of the page. Optionally you can include annotations, patterns, Form XObjects and parent objects in the scan and generally this is something you will want to do.

If you are performing multiple operations of this type you may wish to include a set of IndirectObject IDs that should be skipped. On return the set will have been updated and all the new IndirectObjects that have been scanned will have been added.

## Example

None.

