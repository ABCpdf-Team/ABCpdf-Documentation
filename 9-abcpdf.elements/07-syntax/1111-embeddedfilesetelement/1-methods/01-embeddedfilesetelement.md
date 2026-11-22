# EmbeddedFileSetElement Function

Create a new [EmbeddedFileSetElement](../index.md).

## Syntax

*C#*

[`EmbeddedFileSetElement`](../index.md)`()`  
[`EmbeddedFileSetElement`](../index.md)`(Atom atom, IndirectObject host)`  
[`EmbeddedFileSetElement`](../index.md)`(IndirectObject obj)`  
[`EmbeddedFileSetElement`](../index.md)`(`[`Element`](../../../01-base/1086-element/index.md)` relation, CreationOptions options = CreationOptions.Default)`

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this [Element](../../../01-base/1086-element/index.md). |
| relation | An [Element](../../../01-base/1086-element/index.md). This can be any [Element](../../../01-base/1086-element/index.md) in the Soup but ideally should be one closely associated with this [Element](../../../01-base/1086-element/index.md). |
| options | Options related to creation. For example this allows you to determine whether the [Element](../../../01-base/1086-element/index.md) should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [EmbeddedFileSetElement](../index.md).

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

This code snippet is taken from NameTree.cs line 36 in the Annotations example project.

`FileInfo info = new FileInfo(filePath);`  
[`EmbeddedFileStreamElement`](../../1112-embeddedfilestreamelement/index.md)` stream = EmbedFileStream(info, soup);`  
[`CatalogElement`](../../1081-catalogelement/index.md)` cat = new `[`CatalogElement`](../../1081-catalogelement/index.md)`(soup.Catalog);`  
[`FullFileSpecificationElement`](../../1110-fullfilespecificationelement/index.md)` file = new `[`FullFileSpecificationElement`](../../1110-fullfilespecificationelement/index.md)`(cat);`  
`file.EntryType = "Filespec";`  
`file.EntryF = info.Name;`  
`file.EntryUF = info.Name;`  
`file.EntryEF = new `[`EmbeddedFileSetElement`](../index.md)`(file);`  
`file.EntryEF.EntryF = stream;`  
`file.EntryDesc = description;`  
`return file;`
