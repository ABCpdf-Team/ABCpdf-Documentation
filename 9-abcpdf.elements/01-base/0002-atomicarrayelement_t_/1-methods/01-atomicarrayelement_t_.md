# AtomicArrayElement\<T> Function

Create a new [AtomicArrayElement](../index.md).

## Syntax

*C#*

[`AtomicArrayElement`](../index.md)`<T>()`  
[`AtomicArrayElement`](../index.md)`<T>(Atom atom, IndirectObject host)`  
[`AtomicArrayElement`](../index.md)`<T>(IndirectObject obj)`  
[`AtomicArrayElement`](../index.md)`<T>(`[`Element`](../../1086-element/index.md)` relation, CreationOptions options = CreationOptions.Default)`

⚠ `ArgumentException: Thrown if the Atom provided is not an ArrayAtom or a RefAtom pointing to an ArrayAtom.`

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to be assigned to this [Element](../../1086-element/index.md). |
| host | An IndirectObject. This can be any IndirectObject from the Soup but ideally should be one closely associated with the Atom. |
| obj | The IndirectObject to be assigned to this [Element](../../1086-element/index.md). |
| relation | An [Element](../../1086-element/index.md). This can be any [Element](../../1086-element/index.md) in the Soup but ideally should be one closely associated with this [Element](../../1086-element/index.md). |
| options | Options related to creation. For example this allows you to determine whether the [Element](../../1086-element/index.md) should be created using an IndirectObject rather than just an Atom. |

## Notes

Create a new [AtomicArrayElement](../index.md).

The different constructors allow different ways of creating an [Element](../../1086-element/index.md). Some are used for wrapping existing Atoms or IndirectObjects and others are for creating new ones.

The constructor taking a relation [Element](../../1086-element/index.md) creates a new object in the document - it is typically the constructor you will want to use. Do not specify creation options unless you have very specific needs.

However for your first [Element](../../1086-element/index.md) - one you can use as a relation for the others - you will need to wrap an existing IndirectObject inside an [Element](../../1086-element/index.md). For this you might use code of the following form "[CatalogElement](../../../07-syntax/1081-catalogelement/index.md) root = new [CatalogElement](../../../07-syntax/1081-catalogelement/index.md)(doc.ObjectSoup.Catalog)".

The parameterless constructor allows you to create an empty [Element](../../1086-element/index.md). By empty we mean it has no contents - no Atom within it. So before use an Atom must be Assigned or Created. In practice it is easiest to do this using one of the other constructors.

The atom and host constructor is used to wrap an existing Atom. It creates an [Element](../../1086-element/index.md) and then Assigns the Atom to it. The result is a specialized [Element](../../1086-element/index.md) which can be used to examine or modify the contents of the Atom.

The CreationOptions enumeration may take the following values:

- Default - Default creation options for this particular type of [Element](../../1086-element/index.md).
- Indirect - Create [Element](../../1086-element/index.md) containing an IndirectObject.
- Direct - Create [Element](../../1086-element/index.md) containing an Atom.
