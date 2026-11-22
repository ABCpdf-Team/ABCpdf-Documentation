# Atom Class

A PDF atomic object comprising a basic chunk of PDF data.

If you are going to be using Atoms then you will want to download the [Adobe PDF Specification](http://partners.adobe.com/). This document explains the names and types that can be used and how they are interpreted.

> **Common Operations.**
>
> Get a named property from the dictionary of an IndirectObject. In the example below we use the Type property which is typically a name but the principles are similar for other entries of other types:
>
> ```csharp
> NameAtom type = io.Resolve(Atom.GetItem(io.Atom, "Type")) as NameAtom;
> ```
>
> Get an value out of an array atom. In the event that the atom is not an array or does not have sufficient entries then the return value will be null. In the example below we are looking for entry two - this is the third entry since entries are zero based:
>
> ```csharp
> NumAtom num = io.Resolve(Atom.GetItem(atom, 2)) as NumAtom;
> ```
>
> Get a stream referenced from a property of an IndirectObject. In the example below we use the FontFile2 property (a reference to an embedded TrueType font):
>
> ```csharp
> StreamObject stream = io.ResolveObj(Atom.GetItem(io.Atom, "FontFile2")) as StreamObject;
> ```
>
> Add a named entry to an IndirectObject. In the example below we add a V entry which is a string. We keep the returned StringAtom so we can manipulate the value:
>
> ```csharp
> StringAtom str = (StringAtom)Atom.SetItem(io.Atom, "V", new StringAtom());
> ```
>
> Add a named entry to an IndirectObject. In the example below we add an array entry to specify a border array. Rather than creating an ArrayAtom and specifying the individual values we just specify the raw string value of the object:
>
> ```csharp
> Atom.SetItem(io.Atom, "Border", Atom.FromString("[ 0 0 1 ]"));
> ```

`System.Object`  
`    WebSupergoo.ABCpdf14.Atoms.Atom`  
`       `[`WebSupergoo.ABCpdf14.Atoms.ArrayAtom`](../arrayatom/index.md)  
`       `[`WebSupergoo.ABCpdf14.Atoms.BoolAtom`](../boolatom/index.md)  
`       `[`WebSupergoo.ABCpdf14.Atoms.DictAtom`](../dictatom/index.md)  
`       `[`WebSupergoo.ABCpdf14.Atoms.NameAtom`](../nameatom/index.md)  
`       `[`WebSupergoo.ABCpdf14.Atoms.NullAtom`](../nullatom/index.md)  
`       `[`WebSupergoo.ABCpdf14.Atoms.NumAtom`](../numatom/index.md)  
`       `[`WebSupergoo.ABCpdf14.Atoms.RefAtom`](../refatom/index.md)  
`       `[`WebSupergoo.ABCpdf14.Atoms.OpAtom`](../opatom/index.md)  
`       `[`WebSupergoo.ABCpdf14.Atoms.StringAtom`](../stringatom/index.md)

`Implements: ICloneable, IDisposable, IEquatable<Atom>, IComparable<Atom>`

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [FromString](1-methods/4-fromstring.md) | Create an appropriate type of Atom from a raw PDF string representation. |
| Ⓢ [GetBool](1-methods/getbool.md) | Gets the Boolean value from the Atom if it is a BoolAtom. |
| Ⓢ [GetDouble](1-methods/getdouble.md) | Gets the double value from the Atom if it is a NumAtom. |
| Ⓢ [GetID](1-methods/getid.md) | Gets the Object ID value from the Atom if it is a RefAtom. |
| Ⓢ [GetInt](1-methods/getint.md) | Gets the integer value from the Atom if it is a NumAtom. |
| Ⓢ [GetItem](1-methods/getitem.md) | Gets the specified item from the Atom if it is of a type which contains other Atoms. |
| Ⓢ [GetName](1-methods/getname.md) | Gets the Name value from the Atom if it is a NameAtom. |
| Ⓢ [GetText](1-methods/gettext.md) | Gets the Text value from the Atom if it is a StringAtom. |
| Ⓢ [RemoveItem](1-methods/removeitem.md) | Removes the named entry from the Atom if it is a DictAtom. |
| Ⓢ [SetItem](1-methods/setitem.md) | Adds a specified item to the Atom if it is of a type which contains other Atoms. |
| [GetData](1-methods/getdata.md) | The byte array representation of the Atom as it would appear in a PDF. |
| [Clone](1-methods/1-clone.md) | Creates a deep copy of the current Atom. |
| [Equals](1-methods/3-equals.md) | Test whether the two Atoms are the same. |
| [GetHashCode](1-methods/5-gethashcode.md) | A hash code for the Atom. |
| [ToString](1-methods/tostring.md) | The string representation of the Atom as it would appear in a PDF. |

## Properties

| Property | Description |
| :---: | --- |
| none |  |
