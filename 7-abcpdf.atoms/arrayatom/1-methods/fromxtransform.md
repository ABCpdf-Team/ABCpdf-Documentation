# FromXTransform Function

Create an ArrayAtom from a XTransform representation

## Syntax

*C#*

`static `[`ArrayAtom`](../index.md)` FromXTransform(`[`XTransform`](../../../5-abcpdf/xtransform/index.md)` value)`

## Params

| Name | Description |
| :---: | --- |
| value | The XTransform representing the value of the object. |

## Notes

Create an ArrayAtom from a XTransform representation.

The ArrayAtom will contain six [NumAtoms](../../numatom/index.md) corresponding to the elements of the transform.
