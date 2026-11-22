# GetResourceMap Function

Get a dictionary mapping the names of a particular type of resource to Atoms.

## Syntax

*C#*

`IDictionary<string, `[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)`> GetResourceMap(int id, string type)`  
`IDictionary<string, `[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)`> GetResourceMap(int id, string type, bool includeAnnots, bool includeXObj, bool includePatterns, bool includeParents, ISet<int> skip, ISet<`[`Atom`](../../../7-abcpdf.atoms/1-atom/index.md)`> set)`

## Params

| Name | Description |
| :---: | --- |
| id | The ID of the resource containing object. This is typically the Page ID but you may also use a Form XObject ID. |
| type | The type of resource to be found - Font, XObject, ExtGState, ColorSpace, Pattern, Shading or ProcSet. |
| includeAnnots | Whether to include resources from Annotations on the page (assuming the containing object is a page). |
| includeXObj | Whether to include resources from Form XObjects referenced from this containing object. |
| includePatterns | Whether to include resources from Patterns referenced from this containing object. |
| includeParents | Whether to include resources from parents of this page (assuming the containing object is a page). |
| skip | A set of IDs indicating IndirectObjects that should be skipped. This value may be null if you do not want to skip any items. |
| set | A set of all the resources that have been encountered. The set of resources is generally the same as the set of items in the returned dictionary, but may not be if resource names have clashed. This value may be null if you are not interested in the set. |
| return | A dictionary mapping resource names to Atoms. |

## Notes

Get a dictionary mapping the names of a particular type of resource to Atoms. The Atoms returned are typically RefAtom objects referring to an IndirectObject. However some resource types (notably color spaces) may be referred to direct.

It is unusual to look up just one resource name. Typically one has a sequence of resource names from a content stream which all need resolving. For this reason it is best to use this function to obtain a map which can then be cached.

For resources referenced from the content stream of a page you should pass the ID of the page as this is the containing object. For resources referenced from a Form XObject stream you should pass the ID of the Form XObject as this is the containing object.
