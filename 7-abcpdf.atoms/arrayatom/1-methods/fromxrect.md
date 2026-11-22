# FromXRect Function

Create an ArrayAtom from a XRect representation

## Syntax

*C#*

`static `[`ArrayAtom`](../index.md)` FromXRect( WebSupergoo.ABCpdf14.XRect value)`

## Params

| Name | Description |
| :---: | --- |
| value | The XRect representing the value of the object. |

## Notes

Create an ArrayAtom from a XRect representation.

The ArrayAtom will contain four [NumAtoms](../../numatom/index.md) corresponding to the horizontal and vertical elements of two diagonally opposite corners.
