# String Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "0 0" | No | The point as a string |

## Notes

Allows you to access to the point as a string.

The format of the string must be "x y".

## Example

The following code.

```csharp
var pt = new XPoint();
pt.String = "20 10";
Response.Write($"X = {pt.X}");
Response.Write("<br>");
Response.Write($"Y = {pt.Y}");
```

Produces the following output.

```
X = 20
Y = 10
```

Also see example code in: [ABCpdf Advanced Graphics Example](../../../4-examples/17-advancedgraphics.md), [ABCpdf Fields, Markup and Movies Example](../../../4-examples/18-annotations.md), [XRendering AntiAliasPolygons Property](../../xrendering/2-properties/antialiaspolygons.md), [XRendering AntiAliasText Property](../../xrendering/2-properties/antialiastext.md), [XTransform Invert Function](../../xtransform/1-methods/invert.md), [XTransform Reset Function](../../xtransform/1-methods/reset.md), [XTransform Rotate Function](../../xtransform/1-methods/rotate.md).
