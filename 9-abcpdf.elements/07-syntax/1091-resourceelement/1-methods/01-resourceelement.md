# ResourceElement Function

Create a new [ResourceElement](../index.md).

## Syntax

*C#*

[`ResourceElement`](../index.md)`()`  
[`ResourceElement`](../index.md)`(Atom atom, IndirectObject host)`  
[`ResourceElement`](../index.md)`(IndirectObject obj)`  
[`ResourceElement`](../index.md)`(`[`Element`](../../../01-base/1086-element/index.md)` relation, CreationOptions options = CreationOptions.Default)`

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| relation | An [Element](../../../01-base/1086-element/index.md). This can be any [Element](../../../01-base/1086-element/index.md) in the Soup but ideally should be one closely associated with this [Element](../../../01-base/1086-element/index.md). |
| options | Options related to creation. For example this allows you to determine whether the [Element](../../../01-base/1086-element/index.md) should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [ResourceElement](../index.md).

The different constructors allow different ways of creating an [Element](../../../01-base/1086-element/index.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](../../../01-base/1086-element/index.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](../../../01-base/1086-element/index.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](../../../01-base/1086-element/index.md). For this you might use code of the following form "[CatalogElement](../../1081-catalogelement/index.md) root = new [CatalogElement](../../1081-catalogelement/index.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](../../../01-base/1086-element/index.md). By empty we mean it has no contents - no Atom within it. So before use an Atom must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing Atom. It creates an [Element](../../../01-base/1086-element/index.md) and then Assigns the Atom to it. The result is a specialized [Element](../../../01-base/1086-element/index.md) which can be used to examine or modify the contents of the Atom.

The CreationOptions enumeration may take the following values:

- Default - Default creation options for this particular type of [Element](../../../01-base/1086-element/index.md).
- Indirect - Create [Element](../../../01-base/1086-element/index.md) containing an IndirectObject.
- Direct - Create [Element](../../../01-base/1086-element/index.md) containing an Atom.

## Example

This code snippet is taken from Annotations.cs line 373 in the Annotations example project.

`Doc = inDoc;`  
[`CatalogElement`](../../1081-catalogelement/index.md)` cat = new `[`CatalogElement`](../../1081-catalogelement/index.md)`(Doc.ObjectSoup.Catalog);`  
`if (cat.EntryAcroForm == null) {`  
`  cat.EntryAcroForm = new `[`InteractiveFormElement`](../../../12-interactive/1439-interactiveformelement/index.md)`(cat, CreationOptions.Indirect);`  
`  cat.EntryAcroForm.EntryFields = new `[`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FieldElement`](../../../12-interactive/1440-fieldelement/index.md)`>(cat);`  
`}`  
`else { // convert indirect reference to direct one`  
`  if (cat.EntryAcroForm.EntryFields.Ref != null)`  
`    cat.EntryAcroForm.EntryFields = cat.EntryAcroForm.EntryFields;`  
`}`  
`// add font for text fields`  
`IndirectObject times = Doc.ObjectSoup[Doc.AddFont("Times-Roman")];`  
`if (cat.EntryAcroForm.EntryDR == null)`  
`  cat.EntryAcroForm.EntryDR = new `[`ResourceElement`](../index.md)`(cat);`  
`if (cat.EntryAcroForm.EntryDR.EntryFont == null)`  
`  cat.EntryAcroForm.EntryDR.EntryFont = new `[`DictElement`](../../../01-base/0003-dictelement_t_/index.md)`<`[`FontElement`](../../../09-text/1262-fontelement/index.md)`>(cat);`  
`cat.EntryAcroForm.EntryDR.EntryFont["TimesRoman"] = new `[`FontElement`](../../../09-text/1262-fontelement/index.md)`(times);`  
`FormElement = cat.EntryAcroForm;`
