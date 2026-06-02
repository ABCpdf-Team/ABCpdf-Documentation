# Detag Function

Removes all structure and structure tags from the document.

## Syntax

[C#]

```csharp
void Detag()void Detag(HashSet&lt;string&gt; detagTypes)
```

## Params

| **Name** | **Description** |
| --- | --- |
| detagTypes | Types that should always be deleted. |

## Notes

Removes all structure and structure tags from the document.

By default only BDC / EMC combinations which contain an MCID are removed because only these types are used for the semantic structure of the document.

However there are types such as Artifact tagged elements which exist outside the semantic structure. Because they are outside it they do not have an MCID but at the same time they are part of the structure in the sense that they have been intentionally excluded.

If you would like these elements removed you can specify them using the detagTypes argument.

## Example

None
