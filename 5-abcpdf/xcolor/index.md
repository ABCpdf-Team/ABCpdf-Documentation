# XColor Class

This object represents a color. Colors may be expressed in RGB, CMYK, Grayscale or generic unspecified color components.

When first created, the color defaults to RGB black - "0 0 0".

```
System.Object
    WebSupergoo.ABCpdf14.XColor

Implements: IDisposable, IEquatable<XColor>, IComparable<XColor>
```

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [FromGray](1-methods/fromgray.md) | Create an XColor from a grayscale value. |
| Ⓢ [FromRgb](1-methods/fromrgb.md) | Create an XColor from a set of RGB component values. |
| Ⓢ [FromCmyk](1-methods/fromcmyk.md) | Create an XColor given a set of CMYK component values. |
| Ⓢ [FromComponents](1-methods/fromcomponents.md) | Create an XColor from a set of PDF components in the generic ColorSpace color space. |
| Ⓢ ⚠ [FromArrayAtom](1-methods/fromarrayatom.md) | Create an XColor from an ArrayAtom of NumAtoms containing PDF color values. |
| Ⓢ ⚠ [FromOperator](1-methods/fromoperator.md) | Create an XColor given a PDF color operator and a set of Atoms containing the arguments for that operator. |
| [Clone](1-methods/clone.md) | Creates a deep copy of the current XColor. |
| [SetColor](1-methods/setcolor.md) | Sets the color. |
| [SetGray](1-methods/setgray.md) | Set the color to a grayscale value. |
| [SetRgb](1-methods/setrgb.md) | Set the color to an RGB value. |
| [Equals](1-methods/equals.md) | Test whether the two colors are effectively the same. |
| [GetHashCode](1-methods/gethashcode.md) | A hash code for the XColor. |
| [SetCmyk](1-methods/setcmyk.md) | Set the color to an CMYK value. |
| [SetComponents](1-methods/setcomponents.md) | Set the color to a set of ColorSpace PDF components. |
| [SetRandom](1-methods/setrandom.md) | Set the color to a random opaque value in the current color space. |
| [ToArrayAtom](1-methods/toarrayatom.md) | An ArrayAtom representation of the components of the color. |
| [ToString](1-methods/tostring.md) | Returns a string representation of the object. |

## Properties

| Property | Description |
| --- | --- |
| [Alpha](2-properties/alpha.md) | The alpha opacity. |
| [Black](2-properties/black.md) | The black component. |
| [Blue](2-properties/blue.md) | The blue component. |
| [Color](2-properties/color.md) | The System.Drawing.Color. |
| [ColorSpace](2-properties/colorspace.md) | The native color space for the color. |
| [Components](2-properties/components.md) | The components of the color in native PDF format. |
| [Cyan](2-properties/cyan.md) | The cyan component. |
| [Gray](2-properties/gray.md) | The gray component. |
| [Green](2-properties/green.md) | The green component. |
| [Magenta](2-properties/magenta.md) | The magenta component. |
| [Name](2-properties/name.md) | Any name that may be associated with this color. |
| [Red](2-properties/red.md) | The red component. |
| [String](2-properties/string.md) | The color as a string. |
| [Yellow](2-properties/yellow.md) | The yellow component. |
