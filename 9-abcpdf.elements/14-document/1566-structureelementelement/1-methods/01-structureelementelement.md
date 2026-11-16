# StructureElementElement Function

## Syntax

[C#]

```csharp
<a href="../default.htm">StructureElementElement</a>()<a href="../default.htm">StructureElementElement</a>(Atom atom, IndirectObject host)<a href="../default.htm">StructureElementElement</a>(IndirectObject obj)<a href="../default.htm">StructureElementElement</a>(<a href="../../../01-base/1086-element/default.htm">Element</a> relation, CreationOptions options = CreationOptions.Default)
```

## Params

| **Name** | **Description** |
| --- | --- |
| atom | The Atom to be assigned to this Element. |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this Element. |
| relation | An Element. This can be any Element in the Soup but ideally should be one closely associated with this Element. |
| options | Options related to creation. For example this allows you to determine whether the Element should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [StructureElementElement](default.md).

The different constructors allow different ways of creating an [Element](01-base/1086-element/default.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](01-base/1086-element/default.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](01-base/1086-element/default.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](01-base/1086-element/default.md). For this you might use code of the following form "[CatalogElement](07-syntax/1081-catalogelement/default.md) root = new [CatalogElement](07-syntax/1081-catalogelement/default.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](01-base/1086-element/default.md). By empty we mean it has no contents - no Atom within it. So before use an Atom must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing Atom. It creates an [Element](01-base/1086-element/default.md) and then Assigns the Atom to it. The result is a specialized [Element](01-base/1086-element/default.md) which can be used to examine or modify the contents of the Atom.

The CreationOptions enumeration may take the following values:

* Default - Default creation options for this particular type of Element.
* Indirect - Create Element containing an IndirectObject.
* Direct - Create Element containing an Atom.

## Example

This code snippet is taken from Form1.cs line 294 in the AccessiblePDF example project.

[C#]

```csharp
if (table.Items.Count <= 1)
  continue; // too small
int index = 0;
<a href="../default.htm">StructureElementElement</a> parent = null;
<a href="../default.htm">StructureElementElement</a> tb = new <a href="../default.htm">StructureElementElement</a>(document);
tb.EntryType = "StructElem";
tb.EntryS = "Table";
foreach (Row row in table.Items) {
  <a href="../default.htm">StructureElementElement</a> tr = new <a href="../default.htm">StructureElementElement</a>(document);
  tr.EntryType = "StructElem";
  tr.EntryS = "TR";
  tr.SetParent(tb);
  foreach (<a href="../default.htm">StructureElementElement</a> item in row.Items) {
    if ((parent == null) && (item != null)) {
      Debug.Assert(item.EntryP is <a href="../../1565-structuretreerootelement/default.htm">StructureTreeRootElement</a> == false);
      parent = item.EntryP as <a href="../default.htm">StructureElementElement</a>;
      index = parent.EntryK.IndexOf(item);
    }
    <a href="../default.htm">StructureElementElement</a> td = new <a href="../default.htm">StructureElementElement</a>(document);
    td.EntryType = "StructElem";
    td.EntryS = "TD";
    td.SetParent(tr);
    if (item != null)
      item.SetParent(td);
  }
}
tb.SetParent(parent, index);
```

