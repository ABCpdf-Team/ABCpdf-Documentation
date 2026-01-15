# FromArrayAtom Function

Create an XColor from an ArrayAtom of NumAtoms containing PDF color values.

## Syntax

```csharp
static <a href="../default.htm">XColor</a> FromArrayAtom(<a href="../../../7-abcpdf.atoms/arrayatom/default.htm">ArrayAtom</a> array)
```

## Params

| Name | Description |
| --- | --- |
| array | The ArrayAtom containing the components of the color. |
| return | The resulting XColor. |

## Notes

Create an XColor from an ArrayAtom of NumAtoms containing PDF color values.

There may be only one, three or four items in the ArrayAtom. The number of items is used to select between Grayscale, RGB or CMYK color spaces respectively.

The values expected are PDF color values so all the atoms in the ArrayAtom must  be NumAtoms with a value between zero and one, each representing a  component of the color.

If these conditions are not met then an  exception will be raised.

