# AddFocus Function

Assign a tag to a particular area of the current page.

## Syntax

[C#]

```csharp
<a href="../../xtagging.focus/default.htm">Focus</a> AddFocus(<a href="../../../9-abcpdf.elements/14-document/1566-structureelementelement/default.htm">StructureElementElement</a> element, <a href="../../xrect/default.htm">XRect</a> area)
```

## Params

| **Name** | **Description** |
| --- | --- |
| type | The type of tag to use. |
| type | The area to take the tag. |
| returns | The focus. |

## Notes

Assign a tag to a particular area of the current page.

Tagging is generally performed most easily by using the [Open](04-open.md) and [Close](05-close.md) methods as content is added.

However for some purposes it can be simpler to assign tags to areas on a page. This is particularly the case when you are analyzing an existing document rather than adding content yourself.

This method allows you to specify areas of the document to which a particular tag should be applied. You can overlap areas and the page content will be broken up to fit the overlapped shapes. Text on a page will be tagged using the most recent area which intersects with that text.

## Example

The following code adds sequence of tagged areas to a page. We first delete any existing structure so we have a clean slate. The first Artifact covers the entire page so that anything which is not tagged later will become an artifact. The next tags create a nested sequence of H1, H2 and P elements.

[C#]

```csharp
using var doc = new Doc();<br>doc.Read("../Rez/spacex_nasa_dragon.pdf");<br>Atom.RemoveItem(doc.ObjectSoup.Catalog.Atom, "StructTreeRoot");<br>var st = doc.Tag.GetStructure();<br>st.Detag();<br>st.Title = "SpaceX NASA Dragon";<br>st.CreateAsRequired();<br>var div = st.Root.AddKid("Document").AddKid("Div");<br>var artifact = new StructureElementElement(div) { EntryS = "Artifact" };<br>doc.Tag.AddFocus(artifact, doc.Rect).AddMcids = false;<br>var h1 = doc.Tag.AddFocus(div.AddKid("H1"), XRect.FromSides(0, 650, 600, 710)).Tag;<br>var h2 = doc.Tag.AddFocus(div.AddKid("H2"), XRect.FromSides(0, 620, 600, 650)).Tag;<br>doc.Tag.AddFocus(h2.AddKid("P"), XRect.FromSides(0, 580, 600, 620));<br>doc.Tag.AddFocus(h2.AddKid("P"), XRect.FromSides(0, 500, 600, 580));<br>doc.Tag.AddFocus(h2.AddKid("P"), XRect.FromSides(0, 440, 600, 500));<br>doc.Tag.AddFocus(h2.AddKid("P"), XRect.FromSides(0, 360, 600, 440));<br>doc.Tag.AddFocus(h2.AddKid("P"), XRect.FromSides(0, 270, 600, 360));<br>doc.Tag.AddFocus(h2.AddKid("P"), XRect.FromSides(0, 200, 600, 270));<br>doc.Tag.AddFocus(h2.AddKid("P"), XRect.FromSides(0, 100, 600, 200));<br>var focus = doc.Tag.AddFocus(div.AddKid("Figure"), XRect.FromSides(360, 480, 600, 650));<br>focus.Tag.EntryAlt = "Spacecraft in orbit over earth.";<br>focus.Tag.SetBBox(focus.Bounds);<br>doc.Tag.MakePdfUAConformant = true;<br>doc.Save("taggedarea.pdf");<br>st.UpdateActualText(true, true);<br>var txt = st.ExtractStructure();<br>File.WriteAllText("taggedarea.txt", txt.ToString());
```

![](../../../images/pdf/taggedarea.pdf.png)
taggedarea.pdf

