# Refactor Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether duplicate objects should be detected and factored out. |

## Notes

Whether to eliminate redundant objects during Save.

In addition this also applies to the [Append](../../doc/1-methods/append.md) and [AddImageDoc](../../doc/1-methods/addimagedoc.md) operations as these involve similar concepts.

Sometimes PDFs can contain duplicate objects. Eliminating these duplicates can reduce the size of certain PDF documents.

If this property is set to true then ABCpdf will attempt to eliminate any redundant objects. This process may require significant amounts of memory and time if the documents contain many indirect objects.

Only objects that have been loaded into memory will be considered for refactoring. This is done so that a minimal amount of time is taken to load, modify and save PDFs which should already be efficiently organized.

If you have PDFs, loading from file, which you wish to refactor, then you will need to load all the objects into memory. To do so it is sufficient to touch each of the objects using code such as the following.

```csharp
for(int i = 1, n = doc.ObjectSoup.Count; i < n; i++)
  doc.SetInfo(i, "Touched", true);
```
