# ArrayElement\<T> Function

Create a new [ArrayElement](../index.md).

## Syntax

*C#*

[`ArrayElement`](../index.md)`<T>()`  
[`ArrayElement`](../index.md)`<T>(Atom atom, IndirectObject host)`  
[`ArrayElement`](../index.md)`<T>(IndirectObject obj)`  
[`ArrayElement`](../index.md)`<T>(`[`Element`](../../1086-element/index.md)` relation, CreationOptions options = CreationOptions.Default)`

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to be assigned to this [Element](../../1086-element/index.md). |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this [Element](../../1086-element/index.md). |
| relation | An [Element](../../1086-element/index.md). This can be any [Element](../../1086-element/index.md) in the Soup but ideally should be one closely associated with this [Element](../../1086-element/index.md). |
| options | Options related to creation. For example this allows you to determine whether the [Element](../../1086-element/index.md) should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [ArrayElement](../index.md).

The different constructors allow different ways of creating an [Element](../../1086-element/index.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](../../1086-element/index.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](../../1086-element/index.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](../../1086-element/index.md). For this you might use code of the following form "[CatalogElement](../../../07-syntax/1081-catalogelement/index.md) root = new [CatalogElement](../../../07-syntax/1081-catalogelement/index.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](../../1086-element/index.md). By empty we mean it has no contents - no Atom within it. So before use an Atom must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing Atom. It creates an [Element](../../1086-element/index.md) and then Assigns the Atom to it. The result is a specialized [Element](../../1086-element/index.md) which can be used to examine or modify the contents of the Atom.

The CreationOptions enumeration may take the following values:

- Default - Default creation options for this particular type of [Element](../../1086-element/index.md).
- Indirect - Create [Element](../../1086-element/index.md) containing an IndirectObject.
- Direct - Create [Element](../../1086-element/index.md) containing an Atom.

## Example

This code snippet is taken from TaggedPDF.cs line 630 in the AccessiblePDF example project.

`if (parent.EntryK == null)`  
`  parent.EntryK = new `[`ArrayElement`](../index.md)`<`[`Element`](../../1086-element/index.md)`>(parent);`  
`if (index > parent.EntryK.Count)`  
`  index = parent.EntryK.Count;`  
`parent.EntryK.Insert(index, element);`

This code snippet is taken from Annotations.cs line 81 in the Annotations example project.

[`BorderStyleElement.EntryD`](../../../12-interactive/1394-borderstyleelement/2-properties/04-entryd.md)` = new `[`ArrayElement`](../index.md)`<`[`Element`](../../1086-element/index.md)`>(Atom.FromString(value), AnnotationElement.Host);`

This code snippet is taken from Annotations.cs line 310 in the Annotations example project.

`string partialName, parentName;`  
`List<string> parts = new List<string>(fieldName.Split(new char[] { '.' }));`  
`partialName = parts[parts.Count - 1];`  
`if (string.IsNullOrEmpty(parts[parts.Count - 1]))`  
`  parts.RemoveAt(parts.Count - 1);`  
`parentName = string.Join(".", parts);`  
[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)` parent = new `[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`(Form.Doc.Form[parentName]);`  
`if (parent.EntryKids == null)`  
`  parent.EntryKids = new `[`ArrayElement`](../index.md)`<`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`>();`  
`parent.EntryKids.Add(`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`);`  
[`FieldElement.EntryParent`](../../../12-interactive/1440-fieldelement/2-properties/03-entryparent.md)` = parent;`  
`if (!string.IsNullOrEmpty(partialName))`  
`  `[`FieldElement.EntryT`](../../../12-interactive/1440-fieldelement/2-properties/05-entryt.md)` = fieldName;`

This code snippet is taken from Annotations.cs line 333 in the Annotations example project.

`int fieldID = FieldElement.Object.ID;`  
`if ((Widgets.Count == 0) || ((Widgets.Count == 1) && (Widgets[0].AnnotationElement.Object.ID == fieldID))) {`  
`  `[`FieldElement.EntryKids`](../../../12-interactive/1440-fieldelement/2-properties/04-entrykids.md)` = null;`  
`  return;`  
`}`  
[`FieldElement.EntryKids`](../../../12-interactive/1440-fieldelement/2-properties/04-entrykids.md)` = new `[`ArrayElement`](../index.md)`<`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`>(`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`);`  
`string ft = null;`  
[`Element`](../../1086-element/index.md)` dv = null;`  
`foreach (WidgetAnnotation widget in Widgets) {`  
`  `[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)` kid = new `[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`(widget.WidgetElement.Object);`  
`  if (kid.Object.ID != fieldID) { // not the same object`  
`    kid.EntryParent = `[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`;`  
`    FieldElement.EntryKids.Add(kid);`  
`  }`  
`  if (ft == null)`  
`    ft = kid.EntryFT;`  
`  if (dv == null)`  
`    dv = kid.EntryDV;`  
`  kid.EntryFT = null;`  
`  kid.EntryV = null;`  
`  kid.EntryDV = null;`  
`}`  
`if (ft != null)`  
`  `[`FieldElement.EntryFT`](../../../12-interactive/1440-fieldelement/2-properties/02-entryft.md)` = ft;`  
`if (dv != null)`  
`  `[`FieldElement.EntryDV`](../../../12-interactive/1440-fieldelement/2-properties/10-entrydv.md)` = dv;`
