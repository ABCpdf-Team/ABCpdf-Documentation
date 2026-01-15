# FromOperator Function

Create an XColor given a PDF color operator and a set of Atoms containing the arguments for that operator.

## Syntax

```csharp
static <a href="../default.htm">XColor</a> FromOperator(<a href="../../../7-abcpdf.atoms/1-atom/default.htm">Atom</a>[] arguments, string op)
```

## Params

| Name | Description |
| --- | --- |
| arguments | The Atoms containing the parameters for the color operator. |
| op | The PDF color operator. |
| return | The resulting XColor. |

## Notes

Create an XColor given a PDF color operator and a set of Atoms containing the arguments for that operator.

There are a variety of color operators available  detailed in the PDF Specification. However the most common ones are"rg" and "RG"  which are used to set the color to DeviceRGB. These operators  take three NumAtom arguments for the red, green and blue components, each of which is a value ranging between zero and one. The upper case operator is used to set the stroking color and the lower case one is used to set the non-stroking color.

Other similar  operators include "g" and "G" for grayscale; "k" and "K" for CMYK;  "sc" and "SC" for generic color components; "scn" and "SCN" for generic components - possibly also including a pattern name.

If these conditions are not met then an  exception will be raised.

