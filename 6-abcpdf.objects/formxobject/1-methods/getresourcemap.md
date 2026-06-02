# GetResourceMap Function

Get a dictionary mapping the names of a particular type of resource to Atoms.

## Syntax

[C#]

```csharp
IDictionary&lt;string, <a href="../../../7-abcpdf.atoms/1-atom/default.htm">Atom</a>&gt; GetResourceMap(string type)IDictionary&lt;string, <a href="../../../7-abcpdf.atoms/1-atom/default.htm">Atom</a>&gt; GetResourceMap(string type, bool includeXObjects, bool includePatterns, ISet&lt;int&gt; skip, ISet&lt;<a href="../../../7-abcpdf.atoms/1-atom/default.htm">Atom</a>&gt; set)
```

## Params

| **Name** | **Description** |
| --- | --- |
| type | The type of resource to be indexed. |
| includeXObjects | Whether to include resources from other Form XObjects referenced from this one. |
| includePatterns | Whether to include resources from Patterns referenced from this Form XObject. |
| skip | A set of IDs indicating IndirectObjects that should be skipped. This value may be null if you do not want to skip any items. |
| set | A set of IDs of all the resources that have been encountered. The set of resources is generally the same as the set of items in the returned dictionary, but may not be if resource names have clashed. This value may be null if you are not interested in the set. |

## Notes

Get a dictionary mapping the names of a particular type of resource to Atoms. The Atoms returned are typically RefAtom objects referring to an IndirectObject. However some resource types (notably color spaces) may be referred to direct.

It is unusual to look up just one resource name. Typically one has a sequence of resource names from a content stream which all need resolving. For this reason it is best to use this function to obtain a map which can then be cached.

## Example

None
