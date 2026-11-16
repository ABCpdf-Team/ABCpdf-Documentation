# GetResourceMap Function

## Syntax

[C#] IDictionary<string, Atom> GetResourceMap(int id, string type) IDictionary<string, Atom> GetResourceMap(int id, string type, bool includeAnnots, bool includeXObj, bool includePatterns, bool includeParents, ISet<int> skip, ISet<Atom> set)

## Params

## Notes

Get a dictionary mapping the names of a particular type of resource to Atoms. The Atoms returned are typically RefAtom objects referring to an IndirectObject. However some resource types (notably color spaces) may be referred to direct.

It is unusual to look up just one resource name. Typically one has a sequence of resource names from a content stream which all need resolving. For this reason it is best to use this function to obtain a map which can then be cached.

For resources referenced from the content stream of a page you should pass the ID of the page as this is the containing object. For resources referenced from a Form XObject stream you should pass the ID of the Form XObject as this is the containing object.

## Example

None.

