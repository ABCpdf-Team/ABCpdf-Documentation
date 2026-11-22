# XTransform Class

Represents a world space transform. When first created the object defaults to the identity - no transformation.

A world space transform is not same an object transform. You are changing the coordinate system - not the objects you're inserting.

```
System.Object
    WebSupergoo.ABCpdf14.XTransform

Implements: IDisposable, IEquatable<XTransform>, IComparable<XTransform>
```

## Methods

| Method | Description |
| --- | --- |
| [XTransform](1-methods/1-xtransform.md) | XTransform Constructor. |
| [Clone](1-methods/clone.md) | Creates a deep copy of the current XTransform. |
| [Invert](1-methods/invert.md) | Invert the transform. |
| [Equals](1-methods/equals.md) | Determines if two transforms are effectively the same. |
| [Magnify](1-methods/magnify.md) | Scale about a locked anchor point. |
| [PreMultiply](1-methods/premultiply.md) | Pre-multiplies this transformation matrix by the supplied transform. |
| [PostMultiply](1-methods/postmultiply.md) | Post-multiplies this transformation matrix by the supplied transform. |
| [Reset](1-methods/reset.md) | Reset to the identity. |
| [Rotate](1-methods/rotate.md) | Rotate about a locked anchor point (angle in degrees). |
| [Skew](1-methods/skew.md) | Skew horizontally and vertically about a locked anchor point. |
| [SetTransform](1-methods/settransform.md) | Set the transform. |
| [ToString](1-methods/tostring.md) | Returns a string representation of the object. |
| [TransformPoint](1-methods/transformpoint.md) | Applies this transform to a specified point. |
| [TransformPoints](1-methods/transformpoints.md) | Applies this transform to a specified array of points. |
| [Translate](1-methods/translate.md) | Translate horizontally and vertically. |
| [GetHashCode](1-methods/gethashcode.md) | A hash code for the XTransform. |

## Properties

| Property | Description |
| --- | --- |
| [String](2-properties/string.md) | The transform as a string. |
| [AngleUnit](2-properties/angleunit.md) | The angle unit, degrees or radians. |
| [Elements](2-properties/elements.md) | The transform as an array of floating-point values. |
| [IsIdentity](2-properties/isidentity.md) | Whether the transform is an identity matrix. |
| [IsTranslation](2-properties/istranslation.md) | Whether the transform contains a translation component. |
| [Matrix](2-properties/matrix.md) | The transform as a System.Drawing.Drawing2D Matrix. |
| [OffsetX](2-properties/offsetx.md) | The x translation. |
| [OffsetY](2-properties/offsety.md) | The y translation. |
