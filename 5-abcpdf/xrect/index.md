# XRect Class

Represents a rectangular area in two-dimensional space. When first created the object defaults to an empty rectangle "0 0 0 0".

ABCpdf uses the standard Adobe PDF coordinate space. The origin of this space is at the bottom left of the document. Distances are measured up and right in points. Points are a traditional measure for print work and there are 72 points in an inch. For further details see the [Coordinates](../../2-getting_started/3-coordinates.md) section of the documentation.

You can change the coordinate system used by the [Doc.Rect](../doc/2-properties/rect.md) and the [Doc.MediaBox](../doc/2-properties/mediabox.md) using the [Doc.Units](../doc/2-properties/units.md) and [Doc.TopDown](../doc/2-properties/topdown.md) properties.

```
System.Object
    WebSupergoo.ABCpdf14.XRect

Implements: IDisposable, IEquatable<XRect>, IComparable<XRect>
```

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [FromLbwh](1-methods/1-fromlbwh.md) | Creates an XRect from a bottom left corner, a width and a height. |
| Ⓢ [FromLtwh](1-methods/2-fromltwh.md) | Creates an XRect from a top left corner, a width and a height. |
| Ⓢ [FromSides](1-methods/3-fromsides.md) | Creates an XRect from the coordinates of two diagonally opposite corners. |
| Ⓢ [FromPoints](1-methods/4-frompoints.md) | Create the smallest XRect that encloses all the points supplied. |
| Ⓢ [FromAtom](1-methods/5-fromatom.md) | Create an XRect from a standard PDF Rectangle ArrayAtom. |
| Ⓢ [FromNums](1-methods/6-fromnums.md) | Create an XRect from an array or list of four numbers. |
| [XRect](1-methods/xrect.md) | XRect Constructor. |
| [Clone](1-methods/clone.md) | Creates a deep copy of the current XRect. |
| [Contains](1-methods/contains.md) | Determine if this rectangle contains a specified point or rectangle. |
| [FitIn](1-methods/fitin.md) | Fits the rectangle as content inside another rectangle. |
| [GetCorners](1-methods/getcorners.md) | Get the four corners of the rectangle. |
| [Inset](1-methods/inset.md) | Insets the edges of the rectangle. |
| [Intersect](1-methods/intersect.md) | Intersects this rectangle with another rectangle. |
| [IntersectsWith](1-methods/intersectswith.md) | Determine if this rectangle intersects with another. |
| [Magnify](1-methods/magnify.md) | Magnifies the rectangle. |
| [Move](1-methods/move.md) | Translate the rectangle. |
| [Position](1-methods/position.md) | Position the bottom left of the rectangle. |
| [Resize](1-methods/resize.md) | Resizes the rectangle. |
| [Union](1-methods/union.md) | Union this rectangle with another rectangle. |
| [SetRect](1-methods/setrect.md) | Sets the location and size of the rectangle. |
| [SetSides](1-methods/setsides.md) | Sets the sides of the rectangle. |
| [ToString](1-methods/tostring.md) | Returns a string representation of the object. |
| [Equals](1-methods/equals.md) | Test whether the two rectangles are effectively the same. |
| [GetHashCode](1-methods/gethashcode.md) | A hash code for the XRect. |

## Properties

| Property | Description |
| --- | --- |
| [Bottom](2-properties/bottom.md) | The bottom coordinate. |
| [Height](2-properties/height.md) | The height of the rectangle. |
| [Left](2-properties/left.md) | The left coordinate. |
| [Pin](2-properties/pin.md) | The corner of the rectangle to pin. |
| [Rectangle](2-properties/rectangle.md) | The System.Drawing.Rectangle. |
| [Right](2-properties/right.md) | The right coordinate. |
| [String](2-properties/string.md) | The rect as a string. |
| [Top](2-properties/top.md) | The top coordinate. |
| [Width](2-properties/width.md) | The width of the rectangle. |
| [HasArea](2-properties/hasarea.md) | Whether the rectangle has area. |
