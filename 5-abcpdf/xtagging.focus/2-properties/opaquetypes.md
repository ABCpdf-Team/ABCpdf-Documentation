# OpaqueTypes Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `HashSet<string>` | null | No | Tag types in the content stream that should be excluded from tagging. |

## Notes

Tag types in the content stream that should be excluded from tagging.

The content streams for each page may already include tags. This may happen if, for example, you read an existing tagged document from file.

In this case you may wish to exclude content that has already been tagged. Most commonly you might exclude the Artifact type which would allow you to ignore tags that are already marked as artifacts.

Note that the tag types you use must be low level leaf nodes - the tag types in the content stream rather than in the logical structure. This is true of types like Artifacts but not always of higher level structures like P, Sect or Div.

## Example

The following code detags the document leaving Artifacts behind. It then tags the entire pag as a Sect. When the output is exported, items previously marked as Artifacts - some images, the header, footer and page number- are not part of the Sect.

```csharp
using var doc = new Doc();
doc.Read("../Rez/spacex_nasa_dragon.pdf");
var st = doc.Tag.GetStructure();
st.Detag(); // Artifacts will be left
st.CreateAsRequired();
var div = st.Root.AddKid("Document").AddKid("Div");
var focus = doc.Tag.AddFocus(div.AddKid("Sect"), doc.Rect);
focus.OpaqueTypes = new HashSet<string>(["Artifact"]);
doc.Save("opaquetags.pdf");
st.UpdateActualText(true, true);
st.MarkupStructure();
doc.Save("opaquetags.pdf");
```

![opaquetags.pdf](../../../images/pdf/addtagstotaggeddoc.pdf.png)  
opaquetags.pdf
