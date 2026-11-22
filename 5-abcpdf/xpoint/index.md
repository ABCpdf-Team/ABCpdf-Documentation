# XPoint Class

Represents a point in two-dimensional space. When first created the object defaults to the origin "0 0" which is at the bottom left of the space.

ABCpdf uses the standard Adobe PDF coordinate space. The origin of this space is at the bottom left of the document. Distances are measured up and right in points. Points are a traditional measure for print work and there are 72 points in an inch. For further details see the [Coordinates](../../2-getting_started/3-coordinates.md) section of the documentation.

```
System.Object
    WebSupergoo.ABCpdf14.XPoint

Implements: IDisposable, IEquatable<XPoint>, IComparable<XPoint>
```

## Methods

| Method | Description |
| --- | --- |
| [XPoint](1-methods/xpoint.md) | XPoint Constructor. |
| [Clone](1-methods/clone.md) | Creates a deep copy of the current XPoint. |
| Ⓢ [Copy](1-methods/copy.md) | Copies a series of X and Y coordinates between arrays of doubles and arrays of XPoints. |
| [Equals](1-methods/equals.md) | Test whether the two points are effectvely the same. |
| [GetHashCode](1-methods/gethashcode.md) | A hash code for the XPoint. |
| [SetPoint](1-methods/setpoint.md) | Sets the point. |
| [ToString](1-methods/tostring.md) | Returns a string representation of the object. |

## Properties

| Property | Description |
| --- | --- |
| [Point](2-properties/point.md) | The System.Drawing.Point. |
| [String](2-properties/string.md) | The point as a string. |
| [X](2-properties/x.md) | The horizontal coordinate. |
| [Y](2-properties/y.md) | The vertical coordinate. |
