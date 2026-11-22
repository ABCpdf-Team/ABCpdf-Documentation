# Assign Function

Assign an IndirectObject to this [Element](../index.md).

## Syntax

*C#*

`virtual bool Assign(IndirectObject obj)`  
`virtual bool Assign(`[`Atom`](../2-properties/03-atom.md)` atom, IndirectObject host)`

⚠ `NullReferenceException: Thrown if the atom or host provided is null.`

## Params

| Name | Description |
| :---: | --- |
| obj | The IndirectObject to be assigned to this [Element](../index.md). |
| host | An IndirectObject closely associated with this [Atom](../2-properties/03-atom.md) - ideally the one that contains it. |
| atom | The [Atom](../2-properties/03-atom.md) to be assigned to this [Element](../index.md). |
| return | Whether the assignment was made successfully. |

## Notes

Assign an IndirectObject to this [Element](../index.md).

The process of assignment allows an existing IndirectObject to be viewed through the lens of a particular type of [Element](../index.md).

It is important to ensure that IndirectObjects are assigned to appropriate types of [Element](../index.md).

For example, while is is possible to assign a Page Indirect [Object](../2-properties/05-object.md) to an Image [Element](../index.md), such an assignment is not going to produce any useful view of the data.

In addition, some assignments cannot be made at all. This occurs if if the underlying atom types are inconsistent.

For example a [ColorSpaceElement](../../../08-graphics/0020-colorspaceelement/index.md) is based around an [ArrayAtom](../2-properties/07-arrayatom.md), so attempting to assign an IndirectObject which contains a [DictAtom](../2-properties/06-dictatom.md) will result in failure.

Classes that inherit from this one may wish to override this function to ensure that the [Atom](../2-properties/03-atom.md) type that is provided is acceptable.
