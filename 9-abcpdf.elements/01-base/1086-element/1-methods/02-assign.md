# Assign Function

## Syntax

[C#]

```csharp
virtual bool Assign(IndirectObject obj)virtual bool Assign(<a href="../2-properties/03-atom.htm">Atom</a> atom, IndirectObject host)
```

## Params

| **Name** | **Description** |
| --- | --- |
| obj | The IndirectObject to be assigned to this Element. |
| host | An IndirectObject closely associated with this Atom - ideally the one that contains it. |
| atom | The Atom to be assigned to this Element. |
| return | Whether the assignment was made successfully. |

## Notes

Assign an IndirectObject to this [Element](default.md).

The process of assignment allows an existing IndirectObject to be viewed through the lens of a particular type of [Element](default.md).

It is important to ensure that IndirectObjects are assigned to appropriate types of [Element](default.md).

For example, while is is possible to assign a Page Indirect [Object](2-properties/05-object.md) to an Image [Element](default.md), such an assignment is not going to produce any useful view of the data.

In addition, some assignments cannot be made at all. This occurs if if the underlying atom types are inconsistent.

For example a [ColorSpaceElement](08-graphics/0020-colorspaceelement/default.md) is based around an [ArrayAtom](2-properties/07-arrayatom.md), so attempting to assign an IndirectObject which contains a [DictAtom](2-properties/06-dictatom.md) will result in failure.

Classes that inherit from this one may wish to override this function to ensure that the [Atom](2-properties/03-atom.md) type that is provided is acceptable.
