# Position Function

Position the bottom left of the rectangle.

## Syntax

[C#]

```csharp
void Position(double x, double y)void Position(double x, double y, Corner pin)
```

## Params

| **Name** | **Description** |
| --- | --- |
| x | The new left position. |
| y | The new bottom position. |
| pin | The corner to position. |

## Notes

Moves the rectangle to the supplied position while maintaining the width and height.

The corner moved to the location is indicated by the [Pin](2-properties/pin.md) property but you can override this default by specifying a corner when calling this function.

## Example

The following code.

[C#]

```csharp
var rc = new XRect();
rc.String = "20 20 220 120";
Response.Write($"Rect = {rc}");
Response.Write("&lt;br&gt;");
rc.Position(50, 50);
Response.Write($"Pos. = {rc}");
```

Also see example code in:

* [Doc AddImageDoc Function](doc/1-methods/addimagedoc.md)
* [Doc TopDown Property](doc/2-properties/topdown.md)
* [Doc Transform Property](doc/2-properties/transform.md)
* [XImage Selection Property](ximage/2-properties/selection.md)
* [XTransform Skew Function](xtransform/1-methods/skew.md)
* [XTransform Translate Function](xtransform/1-methods/translate.md).
