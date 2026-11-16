# ResourceElement Function

## Syntax

[C#]

```csharp
<a href="../default.htm">ResourceElement</a>()<a href="../default.htm">ResourceElement</a>(Atom atom, IndirectObject host)<a href="../default.htm">ResourceElement</a>(IndirectObject obj)<a href="../default.htm">ResourceElement</a>(<a href="../../../01-base/1086-element/default.htm">Element</a> relation, CreationOptions options = CreationOptions.Default)
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

Create a new [ResourceElement](default.md).

The different constructors allow different ways of creating an [Element](01-base/1086-element/default.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](01-base/1086-element/default.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](01-base/1086-element/default.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](01-base/1086-element/default.md). For this you might use code of the following form "[CatalogElement](1081-catalogelement/default.md) root = new [CatalogElement](1081-catalogelement/default.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](01-base/1086-element/default.md). By empty we mean it has no contents - no Atom within it. So before use an Atom must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing Atom. It creates an [Element](01-base/1086-element/default.md) and then Assigns the Atom to it. The result is a specialized [Element](01-base/1086-element/default.md) which can be used to examine or modify the contents of the Atom.

The CreationOptions enumeration may take the following values:

* Default - Default creation options for this particular type of Element.
* Indirect - Create Element containing an IndirectObject.
* Direct - Create Element containing an Atom.

## Example

This code snippet is taken from Annotations.cs line 373 in the Annotations example project.

[C#]

```csharp
Doc = inDoc;
<a href="../../1081-catalogelement/default.htm">CatalogElement</a> cat = new <a href="../../1081-catalogelement/default.htm">CatalogElement</a>(Doc.ObjectSoup.Catalog);
if (cat.EntryAcroForm == null) {
  cat.EntryAcroForm = new <a href="../../../12-interactive/1439-interactiveformelement/default.htm">InteractiveFormElement</a>(cat, CreationOptions.Indirect);
  cat.EntryAcroForm.EntryFields = new <a href="../../../01-base/0001-arrayelement_t_/default.htm">ArrayElement</a><<a href="../../../12-interactive/1440-fieldelement/default.htm">FieldElement</a>>(cat);
}
else { // convert indirect reference to direct one
  if (cat.EntryAcroForm.EntryFields.Ref != null)
    cat.EntryAcroForm.EntryFields = cat.EntryAcroForm.EntryFields;
}
// add font for text fields
IndirectObject times = Doc.ObjectSoup[Doc.AddFont("Times-Roman")];
if (cat.EntryAcroForm.EntryDR == null)
  cat.EntryAcroForm.EntryDR = new <a href="../default.htm">ResourceElement</a>(cat);
if (cat.EntryAcroForm.EntryDR.EntryFont == null)
  cat.EntryAcroForm.EntryDR.EntryFont = new <a href="../../../01-base/0003-dictelement_t_/default.htm">DictElement</a><<a href="../../../09-text/1262-fontelement/default.htm">FontElement</a>>(cat);
cat.EntryAcroForm.EntryDR.EntryFont["TimesRoman"] = new <a href="../../../09-text/1262-fontelement/default.htm">FontElement</a>(times);
FormElement = cat.EntryAcroForm;
```

