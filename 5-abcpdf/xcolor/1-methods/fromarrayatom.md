# FromArrayAtom Function

Create an XColor from an ArrayAtom of NumAtoms containing PDF color values.

## Syntax

*C#*

`static `[`XColor`](../index.md)` FromArrayAtom(`[`ArrayAtom`](../../../7-abcpdf.atoms/arrayatom/index.md)` array)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| array | The ArrayAtom containing the components of the color. |
| return | The resulting XColor. |

## Notes

Create an XColor from an [ArrayAtom](../../../7-abcpdf.atoms/arrayatom/index.md) of [NumAtoms](../../../7-abcpdf.atoms/numatom/index.md) containing PDF color values.

There may be only one, three or four items in the ArrayAtom. The number of items is used to select between Grayscale, RGB or CMYK color spaces respectively.

The values expected are PDF color values so all the atoms in the ArrayAtom must be NumAtoms with a value between zero and one, each representing a component of the color.

If these conditions are not met then an exception will be raised.
